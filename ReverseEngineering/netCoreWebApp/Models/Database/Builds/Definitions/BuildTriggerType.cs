﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildTriggerType
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(512)]
        public string Description { get; set; }
    }
}
