using AzureDevOps.Models.Database.Core.Project;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestPlanVariable
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(512)]
        public string Description { get; set; }

        [ForeignKey("TestPlan")]
        public int TestPlanId { get; set; }

        public TestPlan TestPlan { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectID { get; set; }

        public Project Project { get; set; }
    }
}
