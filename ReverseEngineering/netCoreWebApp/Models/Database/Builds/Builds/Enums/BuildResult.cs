using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Builds.Enums
{
    public enum BuildResult
    {
        /// <summary>
        /// The build was canceled before starting
        /// </summary>
        canceled,
        /// <summary>
        /// The build completed unsuccessfully
        /// </summary>
        failed,
        /// <summary>
        ///  No result
        /// </summary>
        none,
        /// <summary>
        /// The build completed compilation successfully but had other errors
        /// </summary>
        partiallySucceeded,
        /// <summary>
        /// The build completed successfully.
        /// </summary>
        succeeded
    }
}
