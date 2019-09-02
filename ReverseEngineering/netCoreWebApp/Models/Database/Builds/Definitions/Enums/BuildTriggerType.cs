using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions.Enums
{
    public enum BuildTriggerType
    {
        /// <summary>
        /// All types
        /// </summary>
        all,
        /// <summary>
        /// A build should be started for multiple changesets at a time at a specified interval.
        /// </summary>
        batchedContinuousIntegration,
        /// <summary>
        /// A validation build should be started for each batch of check-ins
        /// </summary>
        batchedGatedCheckIn,
        /// <summary>
        /// A build should be triggered when another build completes
        /// </summary>
        buildCompletion,
        /// <summary>
        /// A build should be started for each changeset
        /// </summary>
        continuousIntegration,
        /// <summary>
        /// A validation build should be started for each check-in
        /// </summary>
        gatedCheckIn,
        /// <summary>
        /// Manual builds only
        /// </summary>
        none,
        /// <summary>
        /// A build should be triggered when a GitHub pull request is created or updated. Added in resource version 3
        /// </summary>
        pullRequest,
        /// <summary>
        /// A build should be started on a specified schedule whether or not changesets exist
        /// </summary>
        schedule
    }
}
