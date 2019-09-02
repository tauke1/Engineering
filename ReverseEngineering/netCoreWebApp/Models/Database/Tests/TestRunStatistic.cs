using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestRunStatistic
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(255)]
        public string State { get; set; }
        public int Count { get; set; }

        [ForeignKey("TestRun")]
        public int TestRunId { get; set; }

        public TestRun TestRun { get; set; }
    }
}
