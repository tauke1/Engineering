using AzureDevOps.Models.Database.Core.Project;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Git
{
    public class GitRepository
    {
        public Guid Id { get; set; }

        public bool IsFork { get; set; }

        public string Name { get; set; }

        [ForeignKey("ParentRepository")]
        public Guid? ParentRepositoryId {get;set;}

        public GitRepository ParentRepository { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        public string RemoteUrl { get; set; }

        public int Size { get; set; }

        [StringLength(255)]
        public string SshUrl { get; set; }

        [StringLength(255)]
        public string WebUrl { get; set; }

        [Required]
        [StringLength(255)]
        public string DefaultBranch { get; set; }

        [StringLength(255)]
        public string Type { get; set; }
    }
}
