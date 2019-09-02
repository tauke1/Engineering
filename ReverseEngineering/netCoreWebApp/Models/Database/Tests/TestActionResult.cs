using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestActionResult
    {
        [Key]
        public int Id { get; set; }

        [StringLength(512)]
        public string ActionPath { get; set; }

        [StringLength(512)]
        public string Comment { get; set; }

        public DateTime? CompletedDate { get; set; }

        public decimal? DurationInMs { get; set; }

        [StringLength(255)]
        public string ErrorMessage { get; set; }

        [ForeignKey("TestResultIteration")]
        public int? TestResultIterationId { get; set; }

        public TestResultIterationDetails TestResultIteration { get; set; }

        [StringLength(1024)]
        public string Outcome { get; set; }

        public DateTime? StartDate { get; set; }

        [StringLength(255)]
        public string StepIdentifier { get; set; }
    }
}
