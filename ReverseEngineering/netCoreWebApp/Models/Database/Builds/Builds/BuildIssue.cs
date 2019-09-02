using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds
{
    public class BuildIssue
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Category { get; set; }

        [StringLength(3000)]
        public string Data { get; set; }

        [Required]
        [StringLength(512)]
        public string Message { get; set; }

        [ForeignKey("IssueType")]
        public int IssueTypeId { get; set; }

        public BuildIssueType IssueType { get; set; }

        [ForeignKey("Build")]
        public int BuildId { get; set; }

        public Build Build { get; set; }
    }
}
