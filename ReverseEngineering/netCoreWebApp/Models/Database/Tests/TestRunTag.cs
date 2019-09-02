using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestRunTag
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(32)]
        public string Tag { get; set; }

        [ForeignKey("TestRun")]
        public int TestRunId { get; set; }

        public TestRun TestRun { get; set; }
    }
}
