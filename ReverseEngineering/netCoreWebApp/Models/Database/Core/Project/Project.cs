using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Core.Project
{
    public class Project
    {
        [Key]
        public Guid Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(512)]
        public string Description { get; set; }

        [StringLength(64)]
        public string Abbreviation { get; set; }

        public Guid? TeamId { get; set; }

        public DateTime? LastUpdateTime { get; set; }

        public int Revision { get; set; }

        [ForeignKey("Visibility")]
        public int VisibilityId { get; set; }

        [ForeignKey("State")]
        public int StateId { get; set; }

        public ProjectVisibility Visibility { get; set; }

        public ProjectState State { get; set; }

        [Required]
        [StringLength(255)]
        public string OrganizationName { get; set; }

        public static Project GenerateProject() {
            return new Project { Description = "test project", Name = "test", OrganizationName = "tauke1", VisibilityId = 2, StateId = 6 };
        }
    }
}
