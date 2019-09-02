using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests
{
    public class TestRunAttachment
    {
        [Key]
        public int Id { get; set; }

        [StringLength(3000)]
        public string Stream { get; set; }

        [Required]
        [StringLength(255)]
        public string FileName { get; set; }

        [Required]
        [StringLength(128)]
        public string AttachmentType { get; set; }

        [ForeignKey("TestRun")]
        public int TestRunId { get; set; }

        public TestRun TestRun { get; set; }
    }
}
