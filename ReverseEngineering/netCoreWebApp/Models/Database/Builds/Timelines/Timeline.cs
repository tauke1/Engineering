using AzureDevOps.Models.Database.Builds.Builds;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Timelines
{
    public class Timeline
    {
        [Key]
        public Guid Id { get; set; }

        public Guid? lastChangedByUserId { get; set; }

        public DateTime? LastChangedOn { get; set; }

        [ForeignKey("Build")]
        public int BuildId { get; set; }

        public Build Build { get; set; }

        public int ChangeId { get; set; }

        public ICollection<TimelineRecord> Records { get; set; }

    }
}
