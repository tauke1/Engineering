using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestResultCustomField
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string FieldName { get; set; }

        [Required]
        [StringLength(512)]
        public string Value { get; set; }

        [ForeignKey("TestResult")]
        public int TestResultId { get; set; }

        public TestResult TestResult { get; set; }
    }
}
