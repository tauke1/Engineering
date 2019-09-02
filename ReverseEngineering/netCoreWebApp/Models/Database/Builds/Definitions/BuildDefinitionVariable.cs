using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildDefinitionVariable
    {
        [Key]
        public int Id { get; set; }

        public bool AllowOverride { get; set; }

        public bool IsSecret { get; set;  }

        [Required]
        [StringLength(512)]
        public string Value { get; set; }

        [ForeignKey("BuildDefinition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }
    }
}
