using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AzureDevOps.Models.Database.Core.Project.Enums
{
    public enum ProjectState
    {
        /// <summary>
        /// All projects regardless of state
        /// </summary>
        all,
        /// <summary>
        /// Project has been queued for creation, but the process has not yet started.
        /// </summary>
        createPending,
        /// <summary>
        /// Project has been deleted.
        /// </summary>
        deleted,
        /// <summary>
        /// Project is in the process of being deleted.
        /// </summary>
        deleting,
        /// <summary>
        /// Project is in the process of being created.
        /// </summary>
        _new,
        /// <summary>
        // Project has not been changed
        /// </summary>
        unchanged,
        /// <summary>
        /// Project is completely created and ready to use
        /// </summary>
        wellFormed
    }
}
