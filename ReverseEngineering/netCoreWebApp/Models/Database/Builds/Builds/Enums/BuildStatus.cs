using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds.Enums
{
    public enum BuildStatus
    {
        /// <summary>
        /// All status
        /// </summary>
        all,
        /// <summary>
        /// The build is cancelling
        /// </summary>
        cancelling,
        /// <summary>
        /// The build has completed
        /// </summary>
        completed,
        /// <summary>
        /// The build is currently in progress
        /// </summary>
        inProgress,
        /// <summary>
        /// No status
        /// </summary>
        none,
        /// <summary>
        /// The build has not yet started
        /// </summary>
        notStarted,
        /// <summary>
        /// The build is inactive in the queue
        /// </summary>
        postponed
    }
}
