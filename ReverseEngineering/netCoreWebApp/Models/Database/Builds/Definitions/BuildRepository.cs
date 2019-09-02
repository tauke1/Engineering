using AzureDevOps.Models.Database.Builds.Definitions;
using AzureDevOps.Models.Git;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildRepository
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Clean { get; set; }

        [Required]
        public string DefaultBranch { get; set; }

        [StringLength(255)]
        public string RootFolder { get; set; }

        public bool CheckoutSubmodules { get; set; }

        [ForeignKey("BuildDefinition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        [ForeignKey("GitRepository")]
        public Guid GitRepositoryId { get; set; }

        public GitRepository GitRepository { get; set; }
    }
}
