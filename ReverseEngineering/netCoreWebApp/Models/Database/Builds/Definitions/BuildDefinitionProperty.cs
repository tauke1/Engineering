using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildDefinitionProperty
    {
        [Key]
        public long Id { get; set; }

        [ForeignKey("BuildDefinition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        [StringLength(255)]
        [Required]
        public string Key { get; set; }

        [StringLength(512)]
        [Required]
        public string Value { get; set; }
    }
}
