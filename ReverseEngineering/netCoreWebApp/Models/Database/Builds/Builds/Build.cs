using AzureDevOps.Models.Database.Builds.Definitions;
using AzureDevOps.Models.Database.Builds.Timelines;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds
{
    public class Build
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string BuildNumber { get; set; }

        [ForeignKey("Status")]
        public int StatusId { get; set; }

        public BuildStatus Status { get; set; }

        [ForeignKey("Result")]
        public int ResultId { get; set; }

        public BuildResult Result { get; set; }

        public DateTime? QueueTime { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? FinishTime { get; set; }

        [ForeignKey("BuildDefinition")]
        public int BuildDefinitionId { get; set; }

        public BuildDefinition BuildDefinition { get; set; }

        public int BuildNumberRevision { get; set; }

        [Required]
        [StringLength(255)]
        public string SourceBranch { get; set; }

        [Required]
        [StringLength(255)]
        public string SourceVersion { get; set; }

        [ForeignKey("Queue")]
        public int QueueId { get; set; }

        public AgentPoolQueue Queue { get; set; }

        [ForeignKey("QueuePriority")]
        public int QueuePriorityId { get; set; }

        public BuildQueuePriority QueuePriority { get; set; }

        [ForeignKey("Reason")]
        public int ReasonId { get; set; }

        public BuildReason Reason { get; set; }

        public DateTime? LastChangedDate { get; set; }

        public Guid? LastChangedBy { get; set; }
        
        public bool KeepForever { get; set; }

        public bool RetainedByRelease { get; set; }

        [ForeignKey("TriggeredByBuild")]
        public int? TriggeredByBuildId { get; set; }

        public Build TriggeredByBuild { get; set; }

        [ForeignKey("BuildRepository")]
        public int BuildRepositoryId { get; set; }

        public BuildRepository BuildRepository { get; set; }

        public ICollection<Timeline> Timelines { get; set; }
    }
}
