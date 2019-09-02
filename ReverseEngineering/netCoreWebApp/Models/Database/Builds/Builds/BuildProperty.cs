using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds
{
    public class BuildProperty
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Build")]
        public int BuildId { get; set; }

        public Build Build { get; set; }

        [Required]
        [StringLength(255)]
        public string Key { get; set; }

        [Required]
        [StringLength(255)]
        public string Value { get; set; }
    }
}
