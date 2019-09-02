using AzureDevOps.Models.Database.Builds.Definitions;
using AzureDevOps.Models.Database.Core.Project;
using AzureDevOps.Models.Git;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds
{
    public class BuildConfiguration
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Build")]
        public int BuildId { get; set; }

        public Build Build { get; set; }

        [MaxLength(255)]
        public string BranchName { get; set; }

        [ForeignKey("BuildDefenition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        [MaxLength(255)]
        public string BuildSystem { get; set; }

        public DateTime CreationDate { get; set; }

        [MaxLength(255)]
        public string Flavor { get; set; }

        [MaxLength(255)]
        public string Number { get; set; }

        [MaxLength(255)]
        public string BuildConfigurationPlatform { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        [ForeignKey("RepositoryId")]
        public Guid RepositoryId { get; set; }

        public GitRepository Repository { get; set; }

        [MaxLength(255)]
        public string RepositoryType { get; set; }

        [MaxLength(255)]
        public string SourceVersion { get; set; }

        [MaxLength(255)]
        public string TargetBranchName { get; set; }
    }
}
