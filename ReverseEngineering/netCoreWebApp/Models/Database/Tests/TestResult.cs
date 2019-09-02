using AzureDevOps.Models.Database.Builds.Builds;
using AzureDevOps.Models.Database.Core.Project;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestResult
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("AfnStrip")]
        public int? AfnStripId { get; set; }

        public TestResultAttachment AfnStrip { get; set; }

        [StringLength(128)]
        public string AutomatedTestId { get; set; }

        [StringLength(255)]
        public string AutomatedTestName { get; set; }

        [StringLength(255)]
        public string AutomatedTestStorage { get; set; }

        [StringLength(128)]
        public string AutomatedTestType { get; set; }

        [StringLength(128)]
        public string AutomatedTestTypeId { get; set; }

        [ForeignKey("Build")]
        public int? BuildId { get; set; }

        public Build Build { get; set; }

        [StringLength(512)]
        public string Comment { get; set; }

        public DateTime? CompletedDate { get; set; }

        [StringLength(255)]
        public string ComputerName { get; set; }

        public DateTime CreatedDate { get; set; }

        public decimal? DurationInMs { get; set; }

        [StringLength(512)]
        public string ErrorMessage { get; set; }

        [ForeignKey("FailureType")]
        public int FailureTypeId { get; set; }

        public TestResultFailureType FailureType { get; set; }

        public Guid? LastUpdatedByUserId { get; set; }

        public DateTime? LastUpdatedDate { get; set; }

        [StringLength(1024)]
        public string Outcome { get; set; }

        public int Priority { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        public int? ResetCount { get; set; }

        [ForeignKey("GroupType")]
        public int GroupTypeId { get; set; }

        public TestResultGroupType GroupType { get; set; }

        public int Revision { get; set; }

        public Guid? RunByUserId { get; set; }

        [StringLength(10000)]
        public string StackTrace { get; set; }

        public DateTime? StartDate { get; set; }

        [ForeignKey("TestRunState")]
        public int TestRunStateId { get; set; }

        public TestRunState TestRunState { get; set; }

        public int? TestCaseId { get; set; }

        [ForeignKey("TestRun")]
        public int TestRunId { get; set; }

        public TestRun TestRun { get; set; }

        [ForeignKey("TestSuite")]
        public int? TestSuiteId { get; set; }

        public TestSuite TestSuite { get; set; }

    }
}
