using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds.Enums
{
    public enum BuildReason
    {
        /// <summary>
        /// All reasons
        /// </summary>
        all,
        /// <summary>
        /// The build was started for the trigger TriggerType.BatchedContinuousIntegration
        /// </summary>
        batchedCI,
        /// <summary>
        /// The build was started when another build completed
        /// </summary>
        buildCompletion,
        /// <summary>
        /// The build was started for the trigger ContinuousIntegrationType.Gated
        /// </summary>
        checkInShelveset,
        /// <summary>
        /// The build was started for the trigger TriggerType.ContinuousIntegration
        /// </summary>
        individualCI,
        /// <summary>
        /// The build was started manually
        /// </summary>
        manual,
        /// <summary>
        /// No reason. This value should not be used
        /// </summary>
        none,
        /// <summary>
        /// The build was started by a pull request. Added in resource version 3
        /// </summary>
        pullRequest,
        /// <summary>
        /// The build was started for the trigger TriggerType.Schedule
        /// </summary>
        schedule,
        /// <summary>
        /// The build was started for the trigger TriggerType.ScheduleForced
        /// </summary>
        scheduleForced,
        /// <summary>
        /// The build was triggered for retention policy purposes
        /// </summary>
        triggered,
        /// <summary>
        /// The build was created by a user
        /// </summary>
        userCreated,
        /// <summary>
        /// The build was created by a user
        /// </summary>
        validateShelveset
    }
}
