      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildAuthorizationScopes]'))
          SET IDENTITY_INSERT [BuildAuthorizationScopes] ON;
      INSERT INTO [BuildAuthorizationScopes] ([Id], [Description], [Name])
      VALUES (1, N'project', N'project'),
      (2, N'projectCollection', N'projectCollection');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildAuthorizationScopes]'))
          SET IDENTITY_INSERT [BuildAuthorizationScopes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionQualities]'))
          SET IDENTITY_INSERT [BuildDefinitionQualities] ON;
      INSERT INTO [BuildDefinitionQualities] ([Id], [Description], [Name])
      VALUES (1, N'definition', N'definition'),
      (2, N'draft', N'draft');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionQualities]'))
          SET IDENTITY_INSERT [BuildDefinitionQualities] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionQueueStatuses]'))
          SET IDENTITY_INSERT [BuildDefinitionQueueStatuses] ON;
      INSERT INTO [BuildDefinitionQueueStatuses] ([Id], [Description], [Name])
      VALUES (1, N'When disabled the definition queue will not allow builds to be queued by users and the system will not queue scheduled, gated or continuous integration builds. Builds already in the queue will not be started by the system', N'disabled'),
      (2, N'When enabled the definition queue allows builds to be queued by users, the system will queue scheduled, gated and continuous integration builds, and the queued builds will be started by the system', N'enabled'),
      (3, N'When paused the definition queue allows builds to be queued by users and the system will queue scheduled, gated and continuous integration builds. Builds in the queue will not be started by the system', N'paused');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionQueueStatuses]'))
          SET IDENTITY_INSERT [BuildDefinitionQueueStatuses] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionTypes]'))
          SET IDENTITY_INSERT [BuildDefinitionTypes] ON;
      INSERT INTO [BuildDefinitionTypes] ([Id], [Description], [Name])
      VALUES (1, N'build', N'build'),
      (2, N'xaml', N'xaml');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildDefinitionTypes]'))
          SET IDENTITY_INSERT [BuildDefinitionTypes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildIssueTypes]'))
          SET IDENTITY_INSERT [BuildIssueTypes] ON;
      INSERT INTO [BuildIssueTypes] ([Id], [Description], [Name])
      VALUES (1, N'Error Issue Type', N'error'),
      (2, N'Warning Issue Type', N'warning');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildIssueTypes]'))
          SET IDENTITY_INSERT [BuildIssueTypes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildQueuePriorities]'))
          SET IDENTITY_INSERT [BuildQueuePriorities] ON;
      INSERT INTO [BuildQueuePriorities] ([Id], [Description], [Name])
      VALUES (1, N'Above normal priority', N'aboveNormal'),
      (2, N'Below normal priority', N'belowNormal'),
      (3, N'High priority', N'high'),
      (4, N'Low priority', N'low'),
      (5, N'Normal Priority', N'normal');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildQueuePriorities]'))
          SET IDENTITY_INSERT [BuildQueuePriorities] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildReasons]'))
          SET IDENTITY_INSERT [BuildReasons] ON;
      INSERT INTO [BuildReasons] ([Id], [Description], [Name])
      VALUES (4, N'The build was started for the trigger TriggerType.ContinuousIntegration', N'individualCI'),
      (1, N'The build was started for the trigger TriggerType.BatchedContinuousIntegration', N'batchedCI'),
      (12, N' The build was created by a user', N'validateShelveset'),
      (11, N'The build was created by a user', N'userCreated'),
      (10, N'The build was triggered for retention policy purposes', N'triggered'),
      (9, N'The build was started for the trigger TriggerType.ScheduleForced', N'scheduleForced'),
      (8, N'The build was started for the trigger TriggerType.Schedule', N'schedule'),
      (2, N'The build was started when another build completed', N'buildCompletion'),
      (6, N'No reason. This value should not be used', N'none'),
      (5, N'The build was started manually', N'manual'),
      (3, N'The build was started for the trigger ContinuousIntegrationType.Gated', N'checkInShelveset'),
      (7, N'The build was started by a pull request. Added in resource version 3', N'pullRequest');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildReasons]'))
          SET IDENTITY_INSERT [BuildReasons] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildResults]'))
          SET IDENTITY_INSERT [BuildResults] ON;
      INSERT INTO [BuildResults] ([Id], [Description], [Name])
      VALUES (2, N'The build completed unsuccessfully', N'failed'),
      (5, N'The build completed successfully', N'succeeded'),
      (4, N'The build completed compilation successfully but had other errors', N'partiallySucceeded'),
      (3, N' No result', N'none'),
      (1, N'The build was canceled before starting', N'canceled');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildResults]'))
          SET IDENTITY_INSERT [BuildResults] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildStatuses]'))
          SET IDENTITY_INSERT [BuildStatuses] ON;
      INSERT INTO [BuildStatuses] ([Id], [Description], [Name])
      VALUES (6, N'The build is inactive in the queue', N'postponed'),
      (4, N'No status', N'none'),
      (3, N'The build is currently in progress', N'inProgress'),
      (2, N' The build has completed', N'completed'),
      (1, N'The build is cancelling', N'cancelling'),
      (5, N'The build has not yet started', N'notStarted');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildStatuses]'))
          SET IDENTITY_INSERT [BuildStatuses] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildTriggerTypes]'))
          SET IDENTITY_INSERT [BuildTriggerTypes] ON;
      INSERT INTO [BuildTriggerTypes] ([Id], [Description], [Name])
      VALUES (6, N'Manual builds only', N'none'),
      (8, N'A build should be started on a specified schedule whether or not changesets exist', N'schedule'),
      (5, N'A validation build should be started for each check-in', N'gatedCheckIn'),
      (7, N'A build should be triggered when a GitHub pull request is created or updated. Added in resource version 3', N'pullRequest'),
      (3, N'A build should be triggered when another build completes', N'buildCompletion'),
      (2, N'A validation build should be started for each batch of check-ins', N'batchedGatedCheckIn'),
      (1, N'A build should be started for multiple changesets at a time at a specified interval', N'batchedContinuousIntegration'),
      (4, N'A build should be started for each changeset', N'continuousIntegration');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[BuildTriggerTypes]'))
          SET IDENTITY_INSERT [BuildTriggerTypes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[ProjectStates]'))
          SET IDENTITY_INSERT [ProjectStates] ON;
      INSERT INTO [ProjectStates] ([Id], [Description], [Name])
      VALUES (6, N'Project is completely created and ready to use', N'wellFormed'),
      (5, N'Project has not been changed', N'unchanged'),
      (4, N'Project is in the process of being created', N'new'),
      (3, N'Project is in the process of being deleted', N'deleting'),
      (2, N'Project has been deleted', N'deleted'),
      (1, N'Project has been queued for creation, but the process has not yet started', N'createPending');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[ProjectStates]'))
          SET IDENTITY_INSERT [ProjectStates] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[ProjectVisibilities]'))
          SET IDENTITY_INSERT [ProjectVisibilities] ON;
      INSERT INTO [ProjectVisibilities] ([Id], [Description], [Name])
      VALUES (2, N'public project', N'public'),
      (1, N'private project', N'private');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[ProjectVisibilities]'))
          SET IDENTITY_INSERT [ProjectVisibilities] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'IsHosted', N'Name') AND [object_id] = OBJECT_ID(N'[TaskAgentPools]'))
          SET IDENTITY_INSERT [TaskAgentPools] ON;
      INSERT INTO [TaskAgentPools] ([Id], [IsHosted], [Name])
      VALUES (1, 1, N'Hosted Ubuntu 1604');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'IsHosted', N'Name') AND [object_id] = OBJECT_ID(N'[TaskAgentPools]'))
          SET IDENTITY_INSERT [TaskAgentPools] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TaskResults]'))
          SET IDENTITY_INSERT [TaskResults] ON;
      INSERT INTO [TaskResults] ([Id], [Description], [Name])
      VALUES (5, N'succeeded', N'succeeded'),
      (4, N'skipped', N'skipped'),
      (3, N'failed', N'failed'),
      (2, N'canceled', N'canceled'),
      (1, N'abandoned', N'abandoned'),
      (6, N'succeededWithIssues', N'succeededWithIssues');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TaskResults]'))
          SET IDENTITY_INSERT [TaskResults] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestResultFailureTypes]'))
          SET IDENTITY_INSERT [TestResultFailureTypes] ON;
      INSERT INTO [TestResultFailureTypes] ([Id], [Description], [Name])
      VALUES (4, N'Unknown', N'unknown'),
      (3, N'Regression', N'regression'),
      (5, N'None', N'none'),
      (2, N'NewIssue', N'newIssue'),
      (1, N'KnownIssue', N'knownIssue');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestResultFailureTypes]'))
          SET IDENTITY_INSERT [TestResultFailureTypes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestResultGroupTypes]'))
          SET IDENTITY_INSERT [TestResultGroupTypes] ON;
      INSERT INTO [TestResultGroupTypes] ([Id], [Description], [Name])
      VALUES (5, N'Hierarchy type of test result', N'rerun'),
      (1, N'Hierarchy type of test result', N'dataDriven'),
      (2, N'Unknown hierarchy type', N'generic'),
      (3, N'Leaf node of test result', N'none'),
      (4, N'Hierarchy type of test result', N'orderedTest');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestResultGroupTypes]'))
          SET IDENTITY_INSERT [TestResultGroupTypes] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestRunStates]'))
          SET IDENTITY_INSERT [TestRunStates] ON;
      INSERT INTO [TestRunStates] ([Id], [Description], [Name])
      VALUES (7, N'NeedsInvestigation', N'needsInvestigation'),
      (6, N'Aborted', N'aborted'),
      (5, N'Waiting', N'waiting'),
      (3, N'InProgress', N'inProgress'),
      (4, N'Completed', N'completed'),
      (1, N'Unspecified', N'unspecified'),
      (2, N'NotStarted', N'notStarted');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestRunStates]'))
          SET IDENTITY_INSERT [TestRunStates] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestRunSubstates]'))
          SET IDENTITY_INSERT [TestRunSubstates] ON;
      INSERT INTO [TestRunSubstates] ([Id], [Description], [Name])
      VALUES (4, N'Run state when cancellation is in Progress', N'cancellationInProgress'),
      (5, N'Run state while Creating Environment', N'creatingEnvironment'),
      (6, N'Run with noState', N'none'),
      (7, N'Run state while Pending Analysis', N'pendingAnalysis'),
      (3, N'Run state while Creating Environment', N'canceledByUser'),
      (9, N'Run state when run has timedOut', N'timedOut'),
      (1, N'Run state when it is Aborted By the System', N'abortedBySystem'),
      (8, N'Run state while Running Tests', N'runningTests'),
      (2, N'Run state after being Analysed', N'analyzed');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TestRunSubstates]'))
          SET IDENTITY_INSERT [TestRunSubstates] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TimelineRecordStates]'))
          SET IDENTITY_INSERT [TimelineRecordStates] ON;
      INSERT INTO [TimelineRecordStates] ([Id], [Description], [Name])
      VALUES (1, N'completed', N'completed'),
      (2, N'inProgress', N'inProgress'),
      (3, N'pending', N'pending');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Description', N'Name') AND [object_id] = OBJECT_ID(N'[TimelineRecordStates]'))
          SET IDENTITY_INSERT [TimelineRecordStates] OFF;