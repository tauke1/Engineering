using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Tests.Enums
{
    public enum TestSuiteType
    {
        /// <summary>
        /// Query Based test Suite
        /// </summary>
        dynamicTestSuite,
        /// <summary>
        /// Default suite type
        /// </summary>
        none,
        /// <summary>
        /// Requirement based Test Suite
        /// </summary>
        requirementTestSuite,
        /// <summary>
        /// Static Test Suite
        /// </summary>
        staticTestSuite
    }
}
