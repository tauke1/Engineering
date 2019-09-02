      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AreaPath', N'BuildDefinitionId', N'BuildId', N'Description', N'EndDate', N'Iteration', N'Name', N'OwnerUserId', N'PreviousBuildId', N'ProjectId', N'Revision', N'RootSuiteId', N'StartDate', N'State') AND [object_id] = OBJECT_ID(N'[TestPlans]'))
          SET IDENTITY_INSERT [TestPlans] ON;
      INSERT INTO [TestPlans] ([Id], [AreaPath], [BuildDefinitionId], [BuildId], [Description], [EndDate], [Iteration], [Name], [OwnerUserId], [PreviousBuildId], [ProjectId], [Revision], [RootSuiteId], [StartDate], [State])
      VALUES (1, N'test', NULL, NULL, N'test', '2019-09-03T19:23:25.1330000+06:00', N'test\\Sprint 1', N'test Team_Stories_Sprint 1', '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', NULL, '39d7fa96-3cfd-4470-9a12-23f479bff4ec', 0, NULL, '2019-08-27T19:23:25.1330000+06:00', N'Active');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AreaPath', N'BuildDefinitionId', N'BuildId', N'Description', N'EndDate', N'Iteration', N'Name', N'OwnerUserId', N'PreviousBuildId', N'ProjectId', N'Revision', N'RootSuiteId', N'StartDate', N'State') AND [object_id] = OBJECT_ID(N'[TestPlans]'))
          SET IDENTITY_INSERT [TestPlans] OFF;

      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildConfigurationId', N'BuildId', N'Comment', N'CompletedDate', N'Controller', N'CreatedDate', N'DropLocation', N'DueDate', N'ErrorMessage', N'IncompleteTests', N'IsAutomated', N'Iteration', N'LastUpdatedByUserId', N'Name', N'NotApplicableTests', N'OwnerUserId', N'PassedTests', N'Phase', N'PostProcessState', N'ProjectId', N'Revision', N'StartedDate', N'StateId', N'SubstateId', N'TestMessageLogId', N'TestPlanId', N'TotalTests', N'UnanalyzedTests') AND [object_id] = OBJECT_ID(N'[TestRuns]'))
          SET IDENTITY_INSERT [TestRuns] ON;      
      INSERT INTO [TestRuns] ([Id], [BuildConfigurationId], [BuildId], [Comment], [CompletedDate], [Controller], [CreatedDate], [DropLocation], [DueDate], [ErrorMessage], [IncompleteTests], [IsAutomated], [Iteration], [LastUpdatedByUserId], [Name], [NotApplicableTests], [OwnerUserId], [PassedTests], [Phase], [PostProcessState], [ProjectId], [Revision], [StartedDate], [StateId], [SubstateId], [TestMessageLogId], [TestPlanId], [TotalTests], [UnanalyzedTests])
      VALUES (1, NULL, NULL, N'test run', '2019-08-29T13:10:08.5530000+06:00', NULL, '2019-08-29T13:09:53.8930000+06:00', NULL, NULL, NULL, 0, 0, N'test', NULL, N'14 : test (Manual)', 0, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', 1, NULL, N'Complete', '39d7fa96-3cfd-4470-9a12-23f479bff4ec', 0, '2019-08-29T13:09:53.0000000+06:00', 4, NULL, NULL, 1, 1, 0);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildConfigurationId', N'BuildId', N'Comment', N'CompletedDate', N'Controller', N'CreatedDate', N'DropLocation', N'DueDate', N'ErrorMessage', N'IncompleteTests', N'IsAutomated', N'Iteration', N'LastUpdatedByUserId', N'Name', N'NotApplicableTests', N'OwnerUserId', N'PassedTests', N'Phase', N'PostProcessState', N'ProjectId', N'Revision', N'StartedDate', N'StateId', N'SubstateId', N'TestMessageLogId', N'TestPlanId', N'TotalTests', N'UnanalyzedTests') AND [object_id] = OBJECT_ID(N'[TestRuns]'))
          SET IDENTITY_INSERT [TestRuns] OFF;
      
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'FieldName', N'TestRunId', N'Value') AND [object_id] = OBJECT_ID(N'[TestRunCustomFields]'))
          SET IDENTITY_INSERT [TestRunCustomFields] ON;
      INSERT INTO [TestRunCustomFields] ([Id], [FieldName], [TestRunId], [Value])
      VALUES (1, N'LogStoreContainerState', 1, N'0'),
      (2, N'LogStoreContainerSize', 1, N'0');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'FieldName', N'TestRunId', N'Value') AND [object_id] = OBJECT_ID(N'[TestRunCustomFields]'))
          SET IDENTITY_INSERT [TestRunCustomFields] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Count', N'State', N'TestRunId') AND [object_id] = OBJECT_ID(N'[TestRunStatistics]'))
          SET IDENTITY_INSERT [TestRunStatistics] ON;
      INSERT INTO [TestRunStatistics] ([Id], [Count], [State], [TestRunId])
      VALUES (1, 1, N'completed', 1);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Count', N'State', N'TestRunId') AND [object_id] = OBJECT_ID(N'[TestRunStatistics]'))
          SET IDENTITY_INSERT [TestRunStatistics] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Tag', N'TestRunId') AND [object_id] = OBJECT_ID(N'[TestRunTags]'))
          SET IDENTITY_INSERT [TestRunTags] ON;
      INSERT INTO [TestRunTags] ([Id], [Tag], [TestRunId])
      VALUES (1, N'testing', 1),
      (2, N'development', 1);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Tag', N'TestRunId') AND [object_id] = OBJECT_ID(N'[TestRunTags]'))
          SET IDENTITY_INSERT [TestRunTags] OFF;

      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AfnStripId', N'AutomatedTestId', N'AutomatedTestName', N'AutomatedTestStorage', N'AutomatedTestType', N'AutomatedTestTypeId', N'BuildId', N'Comment', N'CompletedDate', N'ComputerName', N'CreatedDate', N'DurationInMs', N'ErrorMessage', N'FailureTypeId', N'GroupTypeId', N'LastUpdatedByUserId', N'LastUpdatedDate', N'Outcome', N'Priority', N'ProjectId', N'ResetCount', N'Revision', N'RunByUserId', N'StackTrace', N'StartDate', N'TestCaseId', N'TestRunId', N'TestRunStateId', N'TestSuiteId') AND [object_id] = OBJECT_ID(N'[TestResults]'))
          SET IDENTITY_INSERT [TestResults] ON;
      INSERT INTO [TestResults] ([Id], [AfnStripId], [AutomatedTestId], [AutomatedTestName], [AutomatedTestStorage], [AutomatedTestType], [AutomatedTestTypeId], [BuildId], [Comment], [CompletedDate], [ComputerName], [CreatedDate], [DurationInMs], [ErrorMessage], [FailureTypeId], [GroupTypeId], [LastUpdatedByUserId], [LastUpdatedDate], [Outcome], [Priority], [ProjectId], [ResetCount], [Revision], [RunByUserId], [StackTrace], [StartDate], [TestCaseId], [TestRunId], [TestRunStateId], [TestSuiteId])
      VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'test passed! :)', '2019-08-29T13:10:10.0200000+06:00', NULL, '2019-08-29T13:09:53.9830000+06:00', 13547.0, NULL, 5, 3, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', '2019-08-29T13:10:08.5530000+06:00', N'Passed', 2, '39d7fa96-3cfd-4470-9a12-23f479bff4ec', NULL, 0, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', NULL, '2019-08-29T13:09:56.4730000+06:00', NULL, 1, 4, NULL);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AfnStripId', N'AutomatedTestId', N'AutomatedTestName', N'AutomatedTestStorage', N'AutomatedTestType', N'AutomatedTestTypeId', N'BuildId', N'Comment', N'CompletedDate', N'ComputerName', N'CreatedDate', N'DurationInMs', N'ErrorMessage', N'FailureTypeId', N'GroupTypeId', N'LastUpdatedByUserId', N'LastUpdatedDate', N'Outcome', N'Priority', N'ProjectId', N'ResetCount', N'Revision', N'RunByUserId', N'StackTrace', N'StartDate', N'TestCaseId', N'TestRunId', N'TestRunStateId', N'TestSuiteId') AND [object_id] = OBJECT_ID(N'[TestResults]'))
          SET IDENTITY_INSERT [TestResults] OFF;          

