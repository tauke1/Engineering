using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds
{
    public class BuildLog
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Build")]
        public int BuildId {get;set;}

        public Build Build { get; set; }

        public int LinesCount { get; set; }

        [Required]
        [StringLength(255)]
        public string Type { get; set; }

        [Required]
        public string Data { get; set; }

        public DateTime CreatedOn { get; set; }

        public DateTime LastChangedOn { get; set; }

        
    }
}
