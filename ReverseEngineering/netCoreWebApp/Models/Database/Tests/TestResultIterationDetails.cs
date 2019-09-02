using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestResultIterationDetails
    {
        [Key]
        public int Id { get; set; }

        [StringLength(1024)]
        public string Comment { get; set; }

        public DateTime? CompletedDate { get; set; }

        public decimal DurationInMs { get; set; }

        [StringLength(512)]
        public string ErrorMessage { get; set; }

        [ForeignKey("TestResult")]
        public int TestResultId { get; set; }

        public TestResult TestResult { get; set; }

        [StringLength(1024)]
        public string Outcome { get; set; }

        public DateTime? StartedDate { get; set; }

        public ICollection<TestActionResult> ActionResults { get; set; }
    }
}
