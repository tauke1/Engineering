using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds.Enums
{
    public enum BuildQueuePriority
    {
        /// <summary>
        /// Above normal priority
        /// </summary>
        aboveNormal,
        /// <summary>
        /// Below normal priority
        /// </summary>
        belowNormal,
        /// <summary>
        /// High priority
        /// </summary>
        high,
        /// <summary>
        /// Low priority
        /// </summary>
        low,
        /// <summary>
        /// Normal priority
        /// </summary>
        normal
    }
}
