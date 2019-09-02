      CREATE TABLE [BuildAuthorizationScopes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildAuthorizationScopes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildDefinitionQualities] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildDefinitionQualities] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildDefinitionQueueStatuses] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildDefinitionQueueStatuses] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildDefinitionTypes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildDefinitionTypes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildIssueTypes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildIssueTypes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildQueuePriorities] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildQueuePriorities] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildReasons] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildReasons] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildResults] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildResults] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildStatuses] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildStatuses] PRIMARY KEY ([Id])
      );
      CREATE TABLE [BuildTriggerTypes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_BuildTriggerTypes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [ProjectStates] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_ProjectStates] PRIMARY KEY ([Id])
      );
      CREATE TABLE [ProjectVisibilities] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_ProjectVisibilities] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TaskAgentPools] (
          [Id] int NOT NULL IDENTITY,
          [IsHosted] bit NOT NULL,
          [Name] nvarchar(255) NOT NULL,
          CONSTRAINT [PK_TaskAgentPools] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TaskResults] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TaskResults] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TestResultFailureTypes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TestResultFailureTypes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TestResultGroupTypes] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TestResultGroupTypes] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TestRunStates] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TestRunStates] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TestRunSubstates] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TestRunSubstates] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TestSuiteType] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TestSuiteType] PRIMARY KEY ([Id])
      );
      CREATE TABLE [TimelineRecordStates] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_TimelineRecordStates] PRIMARY KEY ([Id])
      );
      CREATE TABLE [Projects] (
          [Id] uniqueidentifier NOT NULL,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NULL,
          [Abbreviation] nvarchar(64) NULL,
          [TeamId] uniqueidentifier NULL,
          [LastUpdateTime] datetime2 NULL,
          [Revision] int NOT NULL,
          [VisibilityId] int NOT NULL,
          [StateId] int NOT NULL,
          [OrganizationName] nvarchar(255) NOT NULL,
          CONSTRAINT [PK_Projects] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_Projects_ProjectStates_StateId] FOREIGN KEY ([StateId]) REFERENCES [ProjectStates] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Projects_ProjectVisibilities_VisibilityId] FOREIGN KEY ([VisibilityId]) REFERENCES [ProjectVisibilities] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [AgentPoolQueues] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [PoolId] int NOT NULL,
          CONSTRAINT [PK_AgentPoolQueues] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_AgentPoolQueues_TaskAgentPools_PoolId] FOREIGN KEY ([PoolId]) REFERENCES [TaskAgentPools] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [GitRepositories] (
          [Id] uniqueidentifier NOT NULL,
          [IsFork] bit NOT NULL,
          [Name] nvarchar(max) NULL,
          [ParentRepositoryId] uniqueidentifier NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [RemoteUrl] nvarchar(max) NULL,
          [Size] int NOT NULL,
          [SshUrl] nvarchar(255) NULL,
          [WebUrl] nvarchar(255) NULL,
          [DefaultBranch] nvarchar(255) NOT NULL,
          [Type] nvarchar(255) NULL,
          CONSTRAINT [PK_GitRepositories] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_GitRepositories_GitRepositories_ParentRepositoryId] FOREIGN KEY ([ParentRepositoryId]) REFERENCES [GitRepositories] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_GitRepositories_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [Definitions] (
          [Id] int NOT NULL IDENTITY,
          [AuthoredBy] uniqueidentifier NOT NULL,
          [BadgeEnabled] bit NOT NULL,
          [BuildNumberFormat] nvarchar(255) NULL,
          [Comment] nvarchar(512) NULL,
          [CreatedDate] datetime2 NOT NULL,
          [Description] nvarchar(512) NULL,
          [DraftOfDefinitionId] int NULL,
          [DropLocation] nvarchar(512) NULL,
          [JobCancelTimeoutInMinutes] int NOT NULL,
          [JobTimeoutInMinutes] int NOT NULL,
          [Name] nvarchar(512) NOT NULL,
          [JobAuthorizationScopeId] int NOT NULL,
          [YamlFileName] nvarchar(512) NOT NULL,
          [Path] nvarchar(512) NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [QualityId] int NOT NULL,
          [QueueId] int NOT NULL,
          [QueueStatusId] int NOT NULL,
          [Revision] int NOT NULL,
          [TypeId] int NOT NULL,
          CONSTRAINT [PK_Definitions] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_Definitions_Definitions_DraftOfDefinitionId] FOREIGN KEY ([DraftOfDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_BuildAuthorizationScopes_JobAuthorizationScopeId] FOREIGN KEY ([JobAuthorizationScopeId]) REFERENCES [BuildAuthorizationScopes] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_BuildDefinitionQualities_QualityId] FOREIGN KEY ([QualityId]) REFERENCES [BuildDefinitionQualities] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_AgentPoolQueues_QueueId] FOREIGN KEY ([QueueId]) REFERENCES [AgentPoolQueues] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_BuildDefinitionQueueStatuses_QueueStatusId] FOREIGN KEY ([QueueStatusId]) REFERENCES [BuildDefinitionQueueStatuses] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Definitions_BuildDefinitionTypes_TypeId] FOREIGN KEY ([TypeId]) REFERENCES [BuildDefinitionTypes] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildDefinitionVariables] (
          [Id] int NOT NULL IDENTITY,
          [AllowOverride] bit NOT NULL,
          [IsSecret] bit NOT NULL,
          [Value] nvarchar(512) NOT NULL,
          [BuildDefinitionId] int NOT NULL,
          CONSTRAINT [PK_BuildDefinitionVariables] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildDefinitionVariables_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildRepository] (
          [Id] int NOT NULL IDENTITY,
          [Clean] nvarchar(255) NULL,
          [DefaultBranch] nvarchar(max) NOT NULL,
          [RootFolder] nvarchar(255) NULL,
          [CheckoutSubmodules] bit NOT NULL,
          [BuildDefinitionId] int NOT NULL,
          [GitRepositoryId] uniqueidentifier NOT NULL,
          CONSTRAINT [PK_BuildRepository] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildRepository_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildRepository_GitRepositories_GitRepositoryId] FOREIGN KEY ([GitRepositoryId]) REFERENCES [GitRepositories] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildTriggers] (
          [Id] int NOT NULL IDENTITY,
          [BuildDefinitionId] int NOT NULL,
          [TriggerTypeId] int NOT NULL,
          CONSTRAINT [PK_BuildTriggers] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildTriggers_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildTriggers_BuildTriggerTypes_TriggerTypeId] FOREIGN KEY ([TriggerTypeId]) REFERENCES [BuildTriggerTypes] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [DefinitionProperties] (
          [Id] bigint NOT NULL IDENTITY,
          [BuildDefinitionId] int NOT NULL,
          [Key] nvarchar(255) NOT NULL,
          [Value] nvarchar(512) NOT NULL,
          CONSTRAINT [PK_DefinitionProperties] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_DefinitionProperties_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [Builds] (
          [Id] int NOT NULL IDENTITY,
          [BuildNumber] nvarchar(255) NOT NULL,
          [StatusId] int NOT NULL,
          [ResultId] int NOT NULL,
          [QueueTime] datetime2 NULL,
          [StartDate] datetime2 NULL,
          [FinishTime] datetime2 NULL,
          [BuildDefinitionId] int NOT NULL,
          [BuildNumberRevision] int NOT NULL,
          [SourceBranch] nvarchar(255) NOT NULL,
          [SourceVersion] nvarchar(255) NOT NULL,
          [QueueId] int NOT NULL,
          [QueuePriorityId] int NOT NULL,
          [ReasonId] int NOT NULL,
          [LastChangedDate] datetime2 NULL,
          [LastChangedBy] uniqueidentifier NULL,
          [KeepForever] bit NOT NULL,
          [RetainedByRelease] bit NOT NULL,
          [TriggeredByBuildId] int NULL,
          [BuildRepositoryId] int NOT NULL,
          CONSTRAINT [PK_Builds] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_Builds_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_BuildRepository_BuildRepositoryId] FOREIGN KEY ([BuildRepositoryId]) REFERENCES [BuildRepository] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_AgentPoolQueues_QueueId] FOREIGN KEY ([QueueId]) REFERENCES [AgentPoolQueues] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_BuildQueuePriorities_QueuePriorityId] FOREIGN KEY ([QueuePriorityId]) REFERENCES [BuildQueuePriorities] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_BuildReasons_ReasonId] FOREIGN KEY ([ReasonId]) REFERENCES [BuildReasons] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_BuildResults_ResultId] FOREIGN KEY ([ResultId]) REFERENCES [BuildResults] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_BuildStatuses_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [BuildStatuses] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_Builds_Builds_TriggeredByBuildId] FOREIGN KEY ([TriggeredByBuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildConfigurations] (
          [Id] int NOT NULL IDENTITY,
          [BuildId] int NOT NULL,
          [BranchName] nvarchar(255) NULL,
          [BuildDefinitionId] int NOT NULL,
          [BuildSystem] nvarchar(255) NULL,
          [CreationDate] datetime2 NOT NULL,
          [Flavor] nvarchar(255) NULL,
          [Number] nvarchar(255) NULL,
          [BuildConfigurationPlatform] nvarchar(255) NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [RepositoryId] uniqueidentifier NOT NULL,
          [RepositoryType] nvarchar(255) NULL,
          [SourceVersion] nvarchar(255) NULL,
          [TargetBranchName] nvarchar(255) NULL,
          CONSTRAINT [PK_BuildConfigurations] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildConfigurations_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildConfigurations_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildConfigurations_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildConfigurations_GitRepositories_RepositoryId] FOREIGN KEY ([RepositoryId]) REFERENCES [GitRepositories] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildIssues] (
          [Id] int NOT NULL IDENTITY,
          [Category] nvarchar(255) NOT NULL,
          [Data] nvarchar(3000) NULL,
          [Message] nvarchar(512) NOT NULL,
          [IssueTypeId] int NOT NULL,
          [BuildId] int NOT NULL,
          CONSTRAINT [PK_BuildIssues] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildIssues_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_BuildIssues_BuildIssueTypes_IssueTypeId] FOREIGN KEY ([IssueTypeId]) REFERENCES [BuildIssueTypes] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildLogs] (
          [Id] int NOT NULL IDENTITY,
          [BuildId] int NOT NULL,
          [LinesCount] int NOT NULL,
          [Type] nvarchar(255) NOT NULL,
          [Data] nvarchar(max) NOT NULL,
          [CreatedOn] datetime2 NOT NULL,
          [LastChangedOn] datetime2 NOT NULL,
          CONSTRAINT [PK_BuildLogs] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildLogs_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [BuildProperties] (
          [Id] int NOT NULL IDENTITY,
          [BuildId] int NOT NULL,
          [Key] nvarchar(255) NOT NULL,
          [Value] nvarchar(255) NOT NULL,
          CONSTRAINT [PK_BuildProperties] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_BuildProperties_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [Timelines] (
          [Id] uniqueidentifier NOT NULL,
          [lastChangedByUserId] uniqueidentifier NULL,
          [LastChangedOn] datetime2 NULL,
          [BuildId] int NOT NULL,
          [ChangeId] int NOT NULL,
          CONSTRAINT [PK_Timelines] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_Timelines_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TimelineRecords] (
          [Id] uniqueidentifier NOT NULL,
          [ParentId] uniqueidentifier NULL,
          [Type] nvarchar(255) NOT NULL,
          [Name] nvarchar(255) NOT NULL,
          [StartTime] datetime2 NULL,
          [FinishTime] datetime2 NULL,
          [CurrentOperation] nvarchar(255) NULL,
          [PercentComplete] int NULL,
          [StateId] int NOT NULL,
          [ResultId] int NOT NULL,
          [ResultCode] nvarchar(max) NULL,
          [LastModified] datetime2 NULL,
          [WorkerName] nvarchar(512) NULL,
          [Order] int NOT NULL,
          [DetailsId] uniqueidentifier NULL,
          [ErrorCount] int NOT NULL,
          [WarningCount] int NOT NULL,
          [LogId] int NULL,
          [Identifier] nvarchar(255) NULL,
          [Attempt] int NOT NULL,
          [TimelineId] uniqueidentifier NOT NULL,
          [ChangeId] int NOT NULL,
          [TaskId] uniqueidentifier NULL,
          CONSTRAINT [PK_TimelineRecords] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TimelineRecords_BuildLogs_LogId] FOREIGN KEY ([LogId]) REFERENCES [BuildLogs] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TimelineRecords_TimelineRecords_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [TimelineRecords] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TimelineRecords_TaskResults_ResultId] FOREIGN KEY ([ResultId]) REFERENCES [TaskResults] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TimelineRecords_TimelineRecordStates_StateId] FOREIGN KEY ([StateId]) REFERENCES [TimelineRecordStates] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TimelineRecords_Timelines_TimelineId] FOREIGN KEY ([TimelineId]) REFERENCES [Timelines] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TimelineAttempts] (
          [Id] int NOT NULL IDENTITY,
          [RecordId] uniqueidentifier NOT NULL,
          [TimelineId] uniqueidentifier NOT NULL,
          CONSTRAINT [PK_TimelineAttempts] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TimelineAttempts_TimelineRecords_RecordId] FOREIGN KEY ([RecordId]) REFERENCES [TimelineRecords] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TimelineAttempts_Timelines_TimelineId] FOREIGN KEY ([TimelineId]) REFERENCES [Timelines] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestRuns] (
          [Id] int NOT NULL IDENTITY,
          [BuildId] int NULL,
          [BuildConfigurationId] int NULL,
          [Comment] nvarchar(512) NULL,
          [CompletedDate] datetime2 NULL,
          [Controller] nvarchar(255) NULL,
          [CreatedDate] datetime2 NOT NULL,
          [DropLocation] nvarchar(255) NULL,
          [DueDate] datetime2 NULL,
          [ErrorMessage] nvarchar(512) NULL,
          [IncompleteTests] int NOT NULL,
          [IsAutomated] bit NOT NULL,
          [Iteration] nvarchar(128) NULL,
          [LastUpdatedByUserId] uniqueidentifier NULL,
          [Name] nvarchar(255) NOT NULL,
          [NotApplicableTests] int NOT NULL,
          [OwnerUserId] uniqueidentifier NOT NULL,
          [PassedTests] int NOT NULL,
          [Phase] nvarchar(128) NULL,
          [TestPlanId] int NULL,
          [PostProcessState] nvarchar(255) NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [Revision] int NOT NULL,
          [StartedDate] datetime2 NULL,
          [StateId] int NOT NULL,
          [SubstateId] int NULL,
          [TestMessageLogId] int NULL,
          [TotalTests] int NOT NULL,
          [UnanalyzedTests] int NOT NULL,
          CONSTRAINT [PK_TestRuns] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestRuns_BuildConfigurations_BuildConfigurationId] FOREIGN KEY ([BuildConfigurationId]) REFERENCES [BuildConfigurations] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestRuns_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestRuns_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestRuns_TestRunStates_StateId] FOREIGN KEY ([StateId]) REFERENCES [TestRunStates] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestRuns_TestRunSubstates_SubstateId] FOREIGN KEY ([SubstateId]) REFERENCES [TestRunSubstates] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestRunAttachments] (
          [Id] int NOT NULL IDENTITY,
          [Stream] nvarchar(3000) NULL,
          [FileName] nvarchar(255) NOT NULL,
          [AttachmentType] nvarchar(128) NOT NULL,
          [TestRunId] int NOT NULL,
          CONSTRAINT [PK_TestRunAttachments] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestRunAttachments_TestRuns_TestRunId] FOREIGN KEY ([TestRunId]) REFERENCES [TestRuns] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestRunCustomFields] (
          [Id] int NOT NULL IDENTITY,
          [FieldName] nvarchar(255) NOT NULL,
          [Value] nvarchar(255) NOT NULL,
          [TestRunId] int NOT NULL,
          CONSTRAINT [PK_TestRunCustomFields] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestRunCustomFields_TestRuns_TestRunId] FOREIGN KEY ([TestRunId]) REFERENCES [TestRuns] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestRunStatistics] (
          [Id] int NOT NULL IDENTITY,
          [State] nvarchar(255) NOT NULL,
          [Count] int NOT NULL,
          [TestRunId] int NOT NULL,
          CONSTRAINT [PK_TestRunStatistics] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestRunStatistics_TestRuns_TestRunId] FOREIGN KEY ([TestRunId]) REFERENCES [TestRuns] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestRunTags] (
          [Id] int NOT NULL IDENTITY,
          [Tag] nvarchar(32) NOT NULL,
          [TestRunId] int NOT NULL,
          CONSTRAINT [PK_TestRunTags] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestRunTags_TestRuns_TestRunId] FOREIGN KEY ([TestRunId]) REFERENCES [TestRuns] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestPlans] (
          [Id] int NOT NULL IDENTITY,
          [AreaPath] nvarchar(255) NULL,
          [BuildDefinitionId] int NULL,
          [BuildId] int NULL,
          [Description] nvarchar(512) NULL,
          [EndDate] datetime2 NULL,
          [Iteration] nvarchar(255) NULL,
          [Name] nvarchar(255) NOT NULL,
          [OwnerUserId] uniqueidentifier NOT NULL,
          [PreviousBuildId] int NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [Revision] int NOT NULL,
          [RootSuiteId] int NULL,
          [StartDate] datetime2 NULL,
          [State] nvarchar(255) NOT NULL,
          CONSTRAINT [PK_TestPlans] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestPlans_Definitions_BuildDefinitionId] FOREIGN KEY ([BuildDefinitionId]) REFERENCES [Definitions] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestPlans_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestPlans_Builds_PreviousBuildId] FOREIGN KEY ([PreviousBuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestPlans_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestPlanVariables] (
          [Id] int NOT NULL IDENTITY,
          [Name] nvarchar(255) NOT NULL,
          [Description] nvarchar(512) NULL,
          [TestPlanId] int NOT NULL,
          [ProjectID] uniqueidentifier NOT NULL,
          CONSTRAINT [PK_TestPlanVariables] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestPlanVariables_Projects_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestPlanVariables_TestPlans_TestPlanId] FOREIGN KEY ([TestPlanId]) REFERENCES [TestPlans] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestSuite] (
          [Id] int NOT NULL IDENTITY,
          [InheritDefaultConfigurations] bit NOT NULL,
          [LastError] nvarchar(255) NULL,
          [LastPopulatedDate] datetime2 NULL,
          [LastUpdatedByUser] uniqueidentifier NULL,
          [LastUpdatedDate] datetime2 NULL,
          [Name] nvarchar(255) NOT NULL,
          [ParentTestSuiteId] int NULL,
          [TestPlanId] int NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [QueryString] nvarchar(255) NULL,
          [RequirementId] int NULL,
          [Revision] int NOT NULL,
          [SuiteTypeId] int NOT NULL,
          CONSTRAINT [PK_TestSuite] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestSuite_TestSuite_ParentTestSuiteId] FOREIGN KEY ([ParentTestSuiteId]) REFERENCES [TestSuite] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestSuite_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestSuite_TestSuiteType_SuiteTypeId] FOREIGN KEY ([SuiteTypeId]) REFERENCES [TestSuiteType] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestSuite_TestPlans_TestPlanId] FOREIGN KEY ([TestPlanId]) REFERENCES [TestPlans] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestResults] (
          [Id] int NOT NULL IDENTITY,
          [AfnStripId] int NULL,
          [AutomatedTestId] nvarchar(128) NULL,
          [AutomatedTestName] nvarchar(255) NULL,
          [AutomatedTestStorage] nvarchar(255) NULL,
          [AutomatedTestType] nvarchar(128) NULL,
          [AutomatedTestTypeId] nvarchar(128) NULL,
          [BuildId] int NULL,
          [Comment] nvarchar(512) NULL,
          [CompletedDate] datetime2 NULL,
          [ComputerName] nvarchar(255) NULL,
          [CreatedDate] datetime2 NOT NULL,
          [DurationInMs] decimal(18,2) NULL,
          [ErrorMessage] nvarchar(512) NULL,
          [FailureTypeId] int NOT NULL,
          [LastUpdatedByUserId] uniqueidentifier NULL,
          [LastUpdatedDate] datetime2 NULL,
          [Outcome] nvarchar(1024) NULL,
          [Priority] int NOT NULL,
          [ProjectId] uniqueidentifier NOT NULL,
          [ResetCount] int NULL,
          [GroupTypeId] int NOT NULL,
          [Revision] int NOT NULL,
          [RunByUserId] uniqueidentifier NULL,
          [StackTrace] nvarchar(max) NULL,
          [StartDate] datetime2 NULL,
          [TestRunStateId] int NOT NULL,
          [TestCaseId] int NULL,
          [TestRunId] int NOT NULL,
          [TestSuiteId] int NULL,
          CONSTRAINT [PK_TestResults] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestResults_Builds_BuildId] FOREIGN KEY ([BuildId]) REFERENCES [Builds] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_TestResultFailureTypes_FailureTypeId] FOREIGN KEY ([FailureTypeId]) REFERENCES [TestResultFailureTypes] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_TestResultGroupTypes_GroupTypeId] FOREIGN KEY ([GroupTypeId]) REFERENCES [TestResultGroupTypes] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Projects] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_TestRuns_TestRunId] FOREIGN KEY ([TestRunId]) REFERENCES [TestRuns] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_TestRunStates_TestRunStateId] FOREIGN KEY ([TestRunStateId]) REFERENCES [TestRunStates] ([Id]) ON DELETE NO ACTION,
          CONSTRAINT [FK_TestResults_TestSuite_TestSuiteId] FOREIGN KEY ([TestSuiteId]) REFERENCES [TestSuite] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestResultAttachments] (
          [Id] int NOT NULL IDENTITY,
          [Stream] nvarchar(max) NOT NULL,
          [FileName] nvarchar(255) NOT NULL,
          [AttachmentType] nvarchar(128) NOT NULL,
          [TestResultId] int NOT NULL,
          CONSTRAINT [PK_TestResultAttachments] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestResultAttachments_TestResults_TestResultId] FOREIGN KEY ([TestResultId]) REFERENCES [TestResults] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestResultCustomFields] (
          [Id] int NOT NULL IDENTITY,
          [FieldName] nvarchar(255) NOT NULL,
          [Value] nvarchar(512) NOT NULL,
          [TestResultId] int NOT NULL,
          CONSTRAINT [PK_TestResultCustomFields] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestResultCustomFields_TestResults_TestResultId] FOREIGN KEY ([TestResultId]) REFERENCES [TestResults] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestResultIterationDetails] (
          [Id] int NOT NULL IDENTITY,
          [Comment] nvarchar(1024) NULL,
          [CompletedDate] datetime2 NULL,
          [DurationInMs] decimal(18,2) NOT NULL,
          [ErrorMessage] nvarchar(512) NULL,
          [TestResultId] int NOT NULL,
          [Outcome] nvarchar(1024) NULL,
          [StartedDate] datetime2 NULL,
          CONSTRAINT [PK_TestResultIterationDetails] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestResultIterationDetails_TestResults_TestResultId] FOREIGN KEY ([TestResultId]) REFERENCES [TestResults] ([Id]) ON DELETE NO ACTION
      );
      CREATE TABLE [TestActionResults] (
          [Id] int NOT NULL IDENTITY,
          [ActionPath] nvarchar(512) NULL,
          [Comment] nvarchar(512) NULL,
          [CompletedDate] datetime2 NULL,
          [DurationInMs] decimal(18,2) NULL,
          [ErrorMessage] nvarchar(255) NULL,
          [TestResultIterationId] int NULL,
          [Outcome] nvarchar(1024) NULL,
          [StartDate] datetime2 NULL,
          [StepIdentifier] nvarchar(255) NULL,
          CONSTRAINT [PK_TestActionResults] PRIMARY KEY ([Id]),
          CONSTRAINT [FK_TestActionResults_TestResultIterationDetails_TestResultIterationId] FOREIGN KEY ([TestResultIterationId]) REFERENCES [TestResultIterationDetails] ([Id]) ON DELETE NO ACTION
      );