using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Timelines
{
    public class TimelineAttempt
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Record")]
        public Guid RecordId { get; set; }

        public TimelineRecord Record { get; set; }

        [ForeignKey("Timeline")]
        public Guid TimelineId { get; set; }

        public Timeline Timeline { get; set; }
    }
}
