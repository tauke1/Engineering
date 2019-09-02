using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Builds.Timelines.Enums
{
    public enum TaskResult
    {
        abandoned,
        canceled,
        failed,
        skipped,
        succeeded,
        succeededWithIssues
    }
}
