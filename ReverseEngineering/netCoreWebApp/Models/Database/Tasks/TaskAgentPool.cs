using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Tasks
{
    public class TaskAgentPool
    {
        public int Id { get; set; }


        public bool IsHosted { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }
    }
}
