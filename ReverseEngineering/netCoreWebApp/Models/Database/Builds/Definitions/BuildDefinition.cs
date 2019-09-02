using AzureDevOps.Models.Database.Builds.Builds;
using AzureDevOps.Models.Database.Core.Project;
using AzureDevOps.Models.Git;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions
{
    public class BuildDefinition
    {
        [Key]
        public int Id { get; set; }

        public Guid AuthoredBy { get; set; }

        public bool BadgeEnabled { get; set; }

        [StringLength(255)]
        public string BuildNumberFormat { get; set; }

        [StringLength(512)]
        public string Comment { get; set; }

        public DateTime CreatedDate { get; set; }

        [StringLength(512)]
        public string Description { get; set; }

        [ForeignKey("DraftOfDefinition")]
        public int? DraftOfDefinitionId { get; set; }

        public BuildDefinition DraftOfDefinition { get; set; }

        [StringLength(512)]
        public string DropLocation { get; set; }

        public int JobCancelTimeoutInMinutes { get; set; }

        public int JobTimeoutInMinutes { get; set; }

        //public int? LatestBuildId { get; set; }

        //public Build LatestBuild { get; set; }

        //public int? LatestCompletedBuildId { get; set; }

        //public Build LatestCompletedBuild { get; set; }

        [StringLength(512)]
        [Required]
        public string Name { get; set; }

        [ForeignKey("JobAuthorizationScope")]
        public int JobAuthorizationScopeId {get;set;}

        public BuildAuthorizationScope JobAuthorizationScope { get; set; }

        [StringLength(512)]
        [Required]
        public string YamlFileName { get; set; }

        //public int BuildProcessType { get; set; }

        [StringLength(512)]
        public string Path { get; set; }

        [ForeignKey("Project")]
        public Guid ProjectId { get; set; }

        public Project Project { get; set; }

        [ForeignKey("Quality")]
        public int QualityId { get; set; }

        public BuildDefinitionQuality Quality { get; set; }

        [ForeignKey("Queue")]
        public int QueueId { get; set; }

        public AgentPoolQueue Queue { get; set; }

        [ForeignKey("QueueStatus")]
        public int QueueStatusId {get;set;}

        public BuildDefinitionQueueStatus QueueStatus { get; set; }

        public int Revision { get; set; }

        [ForeignKey("Type")]
        public int TypeId { get; set; }

        public BuildDefinitionType Type { get; set; }
    }
}
