using AzureDevOps.Models.Database.Builds.Tasks;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class AgentPoolQueue
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [ForeignKey("Pool")]
        public int PoolId { get; set; }

        public TaskAgentPool Pool { get; set; }
    }
}
