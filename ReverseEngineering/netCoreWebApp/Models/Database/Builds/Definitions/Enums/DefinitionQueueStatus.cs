using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Definitions.Enums
{
    public enum DefinitionQueueStatus
    {
        /// <summary>
        /// When disabled the definition queue will not allow builds to be queued by users and the system will not queue scheduled, gated or continuous integration builds. Builds already in the queue will not be started by the system.
        /// </summary>
        disabled,
        /// <summary>
        /// When enabled the definition queue allows builds to be queued by users, the system will queue scheduled, gated and continuous integration builds, and the queued builds will be started by the system.
        /// </summary>
        enabled,
        /// <summary>
        /// When paused the definition queue allows builds to be queued by users and the system will queue scheduled, gated and continuous integration builds. Builds in the queue will not be started by the system.
        /// </summary>
        paused

    }
}
