using AzureDevOps.Models.Database.Core.Project;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestSuite
    {
        [Key]
        public int Id { get; set; }

        public bool InheritDefaultConfigurations { get; set; }

        [StringLength(255)]
        public string LastError { get; set; }

        public DateTime? LastPopulatedDate { get; set; }

        public Guid? LastUpdatedByUser { get; set; }

        public DateTime? LastUpdatedDate { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [ForeignKey("ParentTestSuite")]
        public int? ParentTestSuiteId { get; set; }

        public TestSuite ParentTestSuite { get; set; }

        [ForeignKey("TestPlan")]
        public int? TestPlanId { get; set; }

        public TestPlan TestPlan { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        [StringLength(255)]
        public string QueryString { get; set; }

        public int? RequirementId { get; set; }

        public int Revision { get; set; }

        [ForeignKey("SuiteType")]
        public int SuiteTypeId { get; set; }

        public TestSuiteType SuiteType { get; set; }

        public ICollection<TestSuite> ChildrenTestSuites { get; set; }
    }
}
