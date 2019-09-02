using AzureDevOps.Models.Database.Builds.Builds;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Timelines
{
    public class TimelineRecord
    {
        [Key]
        public Guid Id { get; set; }

        [ForeignKey("Parent")]
        public Guid? ParentId { get; set; }

        public TimelineRecord Parent { get; set; }

        [Required]
        [StringLength(255)]
        public string Type { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        public DateTime? StartTime { get; set; }

        public DateTime? FinishTime { get; set; }

        [StringLength(255)]
        public string CurrentOperation { get; set; }

        public int? PercentComplete { get; set; }

        [ForeignKey("State")]
        public int StateId { get; set; }

        public TimelineRecordState State { get; set; }

        [ForeignKey("Result")]
        public int ResultId { get; set; }

        public TaskResult Result { get; set; }

        public string ResultCode { get; set; } 

        public DateTime? LastModified { get; set; }

        [StringLength(512)]
        public string WorkerName { get; set; }

        public int Order { get; set; }

        public Guid? DetailsId { get; set; }

        public int ErrorCount { get; set; }

        public int WarningCount { get; set; }

        [ForeignKey("Log")]
        public int? LogId { get; set; }

        public BuildLog Log { get; set; }

        [StringLength(255)]
        public string Identifier { get; set; }

        public int Attempt { get; set; }

        [ForeignKey("Timeline")]
        public Guid TimelineId { get; set; }

        public Timeline Timeline { get; set; }

        public int ChangeId { get; set; }

        public Guid? TaskId { get; set; }
        public ICollection<TimelineAttempt> PreviousAttempts { get; set; }

    }
}
