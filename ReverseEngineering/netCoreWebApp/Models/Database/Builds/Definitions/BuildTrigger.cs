using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildTrigger
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("BuildDefinition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        [ForeignKey("TriggerType")]
        public int TriggerTypeId { get; set; }

        public BuildTriggerType TriggerType { get; set; }
    }
}
