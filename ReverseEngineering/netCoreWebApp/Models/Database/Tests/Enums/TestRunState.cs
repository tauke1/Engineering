using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests.Enums
{
    public enum TestRunState
    {
        Unspecified,
        NotStarted,
        InProgress,
        Completed,
        Waiting,
        Aborted,
        NeedsInvestigation
    }
}
