using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests.Enums
{
    public enum TestResultGroupType
    {
        /// <summary>
        /// Hierarchy type of test result
        /// </summary>
        dataDriven,
        /// <summary>
        /// Unknown hierarchy type
        /// </summary>
        generic,
        /// <summary>
        /// Leaf node of test result
        /// </summary>
        none,
        /// <summary>
        /// Hierarchy type of test result
        /// </summary>
        orderedTest,
        /// <summary>
        /// Hierarchy type of test result
        /// </summary>
        rerun

    }
}
