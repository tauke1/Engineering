Add-Type -TypeDefinition @"
   public enum BuildStatus
   {
        // All status.
        all,
        // The build is cancelling.
        cancelling,
        // The build has completed
        completed,
        // The build is currently in progress.
        inProgress,
        // No status.
        none,
        // The build has not yet started.
        notStarted,
        // The build is inactive in the queue.
        postponed
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildResult
   {
        // All status
        all,
        // The build was canceled before starting
        canceled,
        // The build completed unsuccessfully
        failed,
        // No result
        none,
        // The build completed compilation successfully but had other errors
        partiallySucceeded,
        // The build completed successfully
        succeeded
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildQueryOrder
   {
        // Order by finish time descending
        finishTimeDescending,
        // Order by finish time ascending
        finishTimeAscending,
        // Order by queue time ascending
        queueTimeAscending,
        // Order by queue time descending
        queueTimeDescending,
        // Order by start time ascending
        startTimeAscending,
        // Order by start time descending
        startTimeDescending
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildReason
   {
        // All reasons
        all,
        // The build was started for the trigger TriggerType.BatchedContinuousIntegration
        batchedCI,
        // The build was started when another build completed
        buildCompletion,
        // The build was started for the trigger ContinuousIntegrationType.Gated
        checkInShelveset,
        // The build was started for the trigger TriggerType.ContinuousIntegration
        individualCI,
        // The build was started manually
        manual,
        // No reason. This value should not be used
        none,
        // The build was started by a pull request. Added in resource version 3
        pullRequest,
        // The build was started for the trigger TriggerType.Schedule
        schedule,
        // The build was triggered for retention policy purposes
        triggered,
        // The build was created by a user
        userCreated,
        // The build was started manually for private validation
        validateShelveset
   }
"@