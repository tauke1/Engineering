using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestResultAttachment
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(10000)]
        public string Stream { get; set; }

        [Required]
        [StringLength(255)]
        public string FileName { get; set; }

        [Required]
        [StringLength(128)]
        public string AttachmentType { get; set; }

        [ForeignKey("TestResult")]
        public int TestResultId { get; set; }

        public TestResult TestResult { get; set; }
    }
}
