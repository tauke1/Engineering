using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests.Enums
{
    public enum TestRunSubstate
    {
        /// <summary>
        /// Run state when it is Aborted By the System
        /// </summary>
        abortedBySystem,
        /// <summary>
        /// Run state after being Analysed
        /// </summary>
        analyzed,
        /// <summary>
        /// Run state while Creating Environment
        /// </summary>
        canceledByUser,
        /// <summary>
        /// Run state when cancellation is in Progress
        /// </summary>
        cancellationInProgress,
        /// <summary>
        /// Run state while Creating Environment
        /// </summary>
        creatingEnvironment,
        /// <summary>
        /// Run with noState
        /// </summary>
        none,
        /// <summary>
        /// Run state while Pending Analysis
        /// </summary>
        pendingAnalysis,
        /// <summary>
        /// Run state while Running Tests
        /// </summary>
        runningTests,
        /// <summary>
        /// Run state when run has timedOut
        /// </summary>
        timedOut
    }
}
