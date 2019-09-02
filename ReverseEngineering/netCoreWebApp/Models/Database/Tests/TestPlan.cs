using AzureDevOps.Models.Database.Builds.Builds;
using AzureDevOps.Models.Database.Builds.Definitions;
using AzureDevOps.Models.Database.Core.Project;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestPlan
    {
        [Key]
        public int Id { get; set; }

        [StringLength(255)]
        public string AreaPath { get; set; }

        [ForeignKey("BuildDefinition")]
        public int? BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        [ForeignKey("Build")]
        public int? BuildId { get; set; }

        public Build Build { get; set; }

        [StringLength(512)]
        public string Description { get; set; }

        public DateTime? EndDate { get; set; }

        [StringLength(255)]
        public string Iteration { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public Guid OwnerUserId { get; set; }

        public int? PreviousBuildId { get; set; }

        public Build PreviousBuild { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }
        public Project Project { get; set; }

        public int Revision { get; set; }

        [ForeignKey("RootSuite")]
        public int? RootSuiteId { get; set; }

        public TestSuite RootSuite { get; set; }

        public DateTime? StartDate { get; set; }

        [Required]
        [StringLength(255)]
        public string State { get; set; }
    }
}
