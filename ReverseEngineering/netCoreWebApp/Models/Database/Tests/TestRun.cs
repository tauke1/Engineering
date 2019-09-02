using AzureDevOps.Models.Database.Builds.Builds;
using AzureDevOps.Models.Database.Core.Project;
using AzureDevOps.Models.Database.Tests.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestRun
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Build")]
        public int? BuildId { get; set; }

        public Build Build { get; set; }

        [ForeignKey("BuildConfiguration")]
        public int? BuildConfigurationId { get; set; }

        public BuildConfiguration BuildConfiguration { get; set; }

        [StringLength(512)]
        public string Comment { get; set; }

        public DateTime? CompletedDate { get; set; }

        [StringLength(255)]
        public string Controller { get; set; }

        public DateTime CreatedDate { get; set; }

        [StringLength(255)]
        public string DropLocation { get; set; }

        public DateTime? DueDate { get; set; }

        [StringLength(512)]
        public string ErrorMessage { get; set; }

        public int IncompleteTests { get; set; }

        public bool IsAutomated { get; set; }

        [StringLength(128)]
        public string Iteration { get; set; }

        public Guid? LastUpdatedByUserId { get; set; }

        [StringLength(255)]
        [Required]
        public string Name { get; set; }

        public int NotApplicableTests { get; set; }

        public Guid OwnerUserId { get; set; }

        public int PassedTests { get; set; }

        [StringLength(128)]
        public string Phase { get; set; }

        [ForeignKey("TestPlan")]
        public int? TestPlanId { get; set; }

        public TestPlan TestPlan { get; set; }

        [StringLength(255)]
        public string PostProcessState { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        public int Revision { get; set; }

        public DateTime? StartedDate { get; set; }

        [ForeignKey("State")]
        public int StateId { get; set; }

        public TestRunState State { get; set; }

        [ForeignKey("Substate")]
        public int? SubstateId { get; set; }

        public TestRunSubstate Substate { get; set; }

        public int? TestMessageLogId { get; set; }

        public int TotalTests { get; set; }

        public int UnanalyzedTests { get; set; }

        public ICollection<TestRunCustomField> CustomFields { get; set; }
    }
}
