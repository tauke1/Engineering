     IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Abbreviation', N'Description', N'LastUpdateTime', N'Name', N'OrganizationName', N'Revision', N'StateId', N'TeamId', N'VisibilityId') AND [object_id] = OBJECT_ID(N'[Projects]'))
          SET IDENTITY_INSERT [Projects] ON;
      INSERT INTO [Projects] ([Id], [Abbreviation], [Description], [LastUpdateTime], [Name], [OrganizationName], [Revision], [StateId], [TeamId], [VisibilityId])
      VALUES ('39d7fa96-3cfd-4470-9a12-23f479bff4ec', NULL, N'test project', NULL, N'test', N'tauke1', 0, 6, NULL, 2);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Abbreviation', N'Description', N'LastUpdateTime', N'Name', N'OrganizationName', N'Revision', N'StateId', N'TeamId', N'VisibilityId') AND [object_id] = OBJECT_ID(N'[Projects]'))
          SET IDENTITY_INSERT [Projects] OFF;
     IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'DefaultBranch', N'IsFork', N'Name', N'ParentRepositoryId', N'ProjectId', N'RemoteUrl', N'Size', N'SshUrl', N'Type', N'WebUrl') AND [object_id] = OBJECT_ID(N'[GitRepositories]'))
          SET IDENTITY_INSERT [GitRepositories] ON;
      INSERT INTO [GitRepositories] ([Id], [DefaultBranch], [IsFork], [Name], [ParentRepositoryId], [ProjectId], [RemoteUrl], [Size], [SshUrl], [Type], [WebUrl])
      VALUES ('3f4d02b7-b6e6-40fd-ba50-10cf3b8e6b54', N'refs/heads/master', 0, N'test', NULL, '39d7fa96-3cfd-4470-9a12-23f479bff4ec', NULL, 27373, N'git@ssh.dev.azure.com:v3/tauke1/test/test', N'TfsGit', N'https://dev.azure.com/tauke1/test/_git/test');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'DefaultBranch', N'IsFork', N'Name', N'ParentRepositoryId', N'ProjectId', N'RemoteUrl', N'Size', N'SshUrl', N'Type', N'WebUrl') AND [object_id] = OBJECT_ID(N'[GitRepositories]'))
          SET IDENTITY_INSERT [GitRepositories] OFF;

      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PoolId') AND [object_id] = OBJECT_ID(N'[AgentPoolQueues]'))
          SET IDENTITY_INSERT [AgentPoolQueues] ON;
      INSERT INTO [AgentPoolQueues] ([Id], [Name], [PoolId])
      VALUES (1, N'Hosted Ubuntu 1604', 1);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Name', N'PoolId') AND [object_id] = OBJECT_ID(N'[AgentPoolQueues]'))
          SET IDENTITY_INSERT [AgentPoolQueues] OFF;    

      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AuthoredBy', N'BadgeEnabled', N'BuildNumberFormat', N'Comment', N'CreatedDate', N'Description', N'DraftOfDefinitionId', N'DropLocation', N'JobAuthorizationScopeId', N'JobCancelTimeoutInMinutes', N'JobTimeoutInMinutes', N'Name', N'Path', N'ProjectId', N'QualityId', N'QueueId', N'QueueStatusId', N'Revision', N'TypeId', N'YamlFileName') AND [object_id] = OBJECT_ID(N'[Definitions]'))
          SET IDENTITY_INSERT [Definitions] ON;
      INSERT INTO [Definitions] ([Id], [AuthoredBy], [BadgeEnabled], [BuildNumberFormat], [Comment], [CreatedDate], [Description], [DraftOfDefinitionId], [DropLocation], [JobAuthorizationScopeId], [JobCancelTimeoutInMinutes], [JobTimeoutInMinutes], [Name], [Path], [ProjectId], [QualityId], [QueueId], [QueueStatusId], [Revision], [TypeId], [YamlFileName])
      VALUES (1, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', 1, NULL, N'test', '2019-09-02T18:44:03.7802794+06:00', N'test', NULL, NULL, 1, 10, 15, N'[P][Master][08.30][CI]', N'/08.30', '39d7fa96-3cfd-4470-9a12-23f479bff4ec', 1, 1, 1, 0, 1, N'/azure-pipelines.yml');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'AuthoredBy', N'BadgeEnabled', N'BuildNumberFormat', N'Comment', N'CreatedDate', N'Description', N'DraftOfDefinitionId', N'DropLocation', N'JobAuthorizationScopeId', N'JobCancelTimeoutInMinutes', N'JobTimeoutInMinutes', N'Name', N'Path', N'ProjectId', N'QualityId', N'QueueId', N'QueueStatusId', N'Revision', N'TypeId', N'YamlFileName') AND [object_id] = OBJECT_ID(N'[Definitions]'))
          SET IDENTITY_INSERT [Definitions] OFF;

     IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'CheckoutSubmodules', N'Clean', N'DefaultBranch', N'GitRepositoryId', N'RootFolder') AND [object_id] = OBJECT_ID(N'[BuildRepository]'))
          SET IDENTITY_INSERT [BuildRepository] ON;
      INSERT INTO [BuildRepository] ([Id], [BuildDefinitionId], [CheckoutSubmodules], [Clean], [DefaultBranch], [GitRepositoryId], [RootFolder])
      VALUES (1, 1, 0, NULL, N'refs/heads/release-08.29', '3f4d02b7-b6e6-40fd-ba50-10cf3b8e6b54', NULL);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'CheckoutSubmodules', N'Clean', N'DefaultBranch', N'GitRepositoryId', N'RootFolder') AND [object_id] = OBJECT_ID(N'[BuildRepository]'))
          SET IDENTITY_INSERT [BuildRepository] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'TriggerTypeId') AND [object_id] = OBJECT_ID(N'[BuildTriggers]'))
          SET IDENTITY_INSERT [BuildTriggers] ON;
      INSERT INTO [BuildTriggers] ([Id], [BuildDefinitionId], [TriggerTypeId])
      VALUES (1, 1, 4);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'TriggerTypeId') AND [object_id] = OBJECT_ID(N'[BuildTriggers]'))
          SET IDENTITY_INSERT [BuildTriggers] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'Key', N'Value') AND [object_id] = OBJECT_ID(N'[DefinitionProperties]'))
          SET IDENTITY_INSERT [DefinitionProperties] ON;
      INSERT INTO [DefinitionProperties] ([Id], [BuildDefinitionId], [Key], [Value])
      VALUES (CAST(1 AS bigint), 1, N'testProp', N'testVal');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'Key', N'Value') AND [object_id] = OBJECT_ID(N'[DefinitionProperties]'))
          SET IDENTITY_INSERT [DefinitionProperties] OFF;

      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'BuildNumber', N'BuildNumberRevision', N'BuildRepositoryId', N'FinishTime', N'KeepForever', N'LastChangedBy', N'LastChangedDate', N'QueueId', N'QueuePriorityId', N'QueueTime', N'ReasonId', N'ResultId', N'RetainedByRelease', N'SourceBranch', N'SourceVersion', N'StartDate', N'StatusId', N'TriggeredByBuildId') AND [object_id] = OBJECT_ID(N'[Builds]'))
          SET IDENTITY_INSERT [Builds] ON;
      INSERT INTO [Builds] ([Id], [BuildDefinitionId], [BuildNumber], [BuildNumberRevision], [BuildRepositoryId], [FinishTime], [KeepForever], [LastChangedBy], [LastChangedDate], [QueueId], [QueuePriorityId], [QueueTime], [ReasonId], [ResultId], [RetainedByRelease], [SourceBranch], [SourceVersion], [StartDate], [StatusId], [TriggeredByBuildId])
      VALUES (1, 1, N'20190829.1', 0, 1, '2019-08-29T15:57:43.7600431+06:00', 0, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', '2019-08-29T15:57:44.1030000+06:00', 1, 5, '2019-08-29T15:57:16.8241665+06:00', 5, 5, 0, N'refs/heads/release-08.29', N'b43bd6a1785759a7bae16a37a956f9389dcc73a4', '2019-08-29T15:57:24.5958544+06:00', 2, NULL),
      (2, 1, N'20190829.2', 0, 1, '2019-08-29T15:57:43.7600431+06:00', 0, '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f', '2019-08-29T15:57:44.1030000+06:00', 1, 5, '2019-08-29T15:57:16.8241665+06:00', 5, 2, 0, N'refs/heads/release-08.29', N'b43bd6a1785759a7bae16a37a956f9389dcc73a4', '2019-08-29T15:57:24.5958544+06:00', 2, NULL);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildDefinitionId', N'BuildNumber', N'BuildNumberRevision', N'BuildRepositoryId', N'FinishTime', N'KeepForever', N'LastChangedBy', N'LastChangedDate', N'QueueId', N'QueuePriorityId', N'QueueTime', N'ReasonId', N'ResultId', N'RetainedByRelease', N'SourceBranch', N'SourceVersion', N'StartDate', N'StatusId', N'TriggeredByBuildId') AND [object_id] = OBJECT_ID(N'[Builds]'))
          SET IDENTITY_INSERT [Builds] OFF;
     
      
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'Category', N'Data', N'IssueTypeId', N'Message') AND [object_id] = OBJECT_ID(N'[BuildIssues]'))
          SET IDENTITY_INSERT [BuildIssues] ON;
      INSERT INTO [BuildIssues] ([Id], [BuildId], [Category], [Data], [IssueTypeId], [Message])
      VALUES (1, 1, N'General', N'{
                              ''type'': ''error'',
                              ''logFileLineNumber'': ''20''
                          }', 1, N'PowerShell exited with code ''1''.');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'Category', N'Data', N'IssueTypeId', N'Message') AND [object_id] = OBJECT_ID(N'[BuildIssues]'))
          SET IDENTITY_INSERT [BuildIssues] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'CreatedOn', N'Data', N'LastChangedOn', N'LinesCount', N'Type') AND [object_id] = OBJECT_ID(N'[BuildLogs]'))
          SET IDENTITY_INSERT [BuildLogs] ON;
      INSERT INTO [BuildLogs] ([Id], [BuildId], [CreatedOn], [Data], [LastChangedOn], [LinesCount], [Type])
      VALUES (21, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:41.0570305Z ##[section]Starting: Checkout
                      2019-08-29T09:57:41.0571897Z ==============================================================================
                      2019-08-29T09:57:41.0571993Z Task         : Get sources
                      2019-08-29T09:57:41.0572027Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:41.0572059Z Version      : 1.0.0
                      2019-08-29T09:57:41.0572131Z Author       : Microsoft
                      2019-08-29T09:57:41.0572164Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:41.0572195Z ==============================================================================
                      2019-08-29T09:57:41.4718178Z Cleaning any cached credential from repository: test (Git)
                      2019-08-29T09:57:41.4759342Z ##[section]Finishing: Checkout', '2019-08-29T15:57:17.0000000+06:00', 11, N'Container'),
      (20, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:40.9042245Z ##[section]Starting: Run a multi-line script
                      2019-08-29T09:57:40.9044902Z ==============================================================================
                      2019-08-29T09:57:40.9045010Z Task         : Command line
                      2019-08-29T09:57:40.9045046Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:40.9045081Z Version      : 2.151.2
                      2019-08-29T09:57:40.9045161Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.9045196Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:40.9045231Z ==============================================================================
                      2019-08-29T09:57:41.0349566Z Generating script.
                      2019-08-29T09:57:41.0373008Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:41.0403393Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/f9d6fee3-f45b-4b03-9588-5b245e1cf62d.sh
                      2019-08-29T09:57:41.0487472Z Add other tasks to build, test, and deploy your project.
                      2019-08-29T09:57:41.0487882Z See https://aka.ms/yaml
                      2019-08-29T09:57:41.0560668Z ##[section]Finishing: Run a multi-line script', '2019-08-29T15:57:17.0000000+06:00', 15, N'Container'),
      (19, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:40.1795377Z ##[section]Starting: Get Setted variables
                      2019-08-29T09:57:40.1798679Z ==============================================================================
                      2019-08-29T09:57:40.1798741Z Task         : PowerShell
                      2019-08-29T09:57:40.1798776Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:40.1798812Z Version      : 2.151.2
                      2019-08-29T09:57:40.1798892Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.1798928Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:40.1798962Z ==============================================================================
                      2019-08-29T09:57:40.3135221Z Generating script.
                      2019-08-29T09:57:40.3159305Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:40.3190581Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1''
                      2019-08-29T09:57:40.8535753Z Build.DropRoot = \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.9035381Z ##[section]Finishing: Get Setted variables', '2019-08-29T15:57:17.0000000+06:00', 14, N'Container'),
      (18, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:34.5813648Z ##[section]Starting: Set Build Variables
                      2019-08-26T13:06:06.8671667Z ##[section]Starting: Set Build Variables
                      2019-08-26T13:06:06.8674417Z ==============================================================================
                      2019-08-26T13:06:06.8674506Z Task         : PowerShell
                      2019-08-26T13:06:06.8674548Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-26T13:06:06.8674576Z Version      : 2.151.2
                      2019-08-26T13:06:06.8674640Z Author       : Microsoft Corporation
                      2019-08-26T13:06:06.8674670Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-26T13:06:06.8674713Z ==============================================================================
                      2019-08-26T13:06:07.0097684Z Generating script.
                      2019-08-26T13:06:07.0126383Z ========================== Starting Command Output ===========================
                      2019-08-26T13:06:07.0163775Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/4a3172dc-fbee-4250-a98d-6fceb3423ee8.ps1''
                      2019-08-26T13:06:11.9822065Z \\bies-pbi : The term ''\\bies-pbi'' is not recognized as the name of a cmdlet, function, script file, or operable program.
                      2019-08-26T13:06:11.9827466Z Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
                      2019-08-26T13:06:11.9830345Z At /home/vsts/work/_temp/4a3172dc-fbee-4250-a98d-6fceb3423ee8.ps1:4 char:1
                      2019-08-26T13:06:11.9832663Z + \\bies-pbi = ''$env:BUILD_DROPROOT\\$env:BUILD_SOURCEBRANCHNAME\\$env: ...
                      2019-08-26T13:06:11.9834825Z + ~~~~~~~~~~
                      2019-08-26T13:06:11.9837569Z + CategoryInfo          : ObjectNotFound: (\\bies-pbi:String) [], ParentContainsErrorRecordException
                      2019-08-26T13:06:11.9839722Z + FullyQualifiedErrorId : CommandNotFoundException
                      2019-08-26T13:06:11.9841537Z  
                      2019-08-26T13:06:12.0152544Z ##[error]PowerShell exited with code ''1''.
                      2019-08-26T13:06:12.0165982Z ##[section]Finishing: Set Build Variables', '2019-08-29T15:57:17.0000000+06:00', 21, N'Container'),
      (17, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:32.4928850Z ##[section]Starting: Run a one-line script
                      2019-08-29T09:57:32.4931670Z ==============================================================================
                      2019-08-29T09:57:32.4931807Z Task         : Command line
                      2019-08-29T09:57:32.4931873Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:32.4931909Z Version      : 2.151.2
                      2019-08-29T09:57:32.4931942Z Author       : Microsoft Corporation
                      2019-08-29T09:57:32.4931988Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:32.4932023Z ==============================================================================
                      2019-08-29T09:57:34.5362659Z Generating script.
                      2019-08-29T09:57:34.5382579Z Script contents:
                      2019-08-29T09:57:34.5383066Z echo Hello, world!
                      2019-08-29T09:57:34.5383404Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.5437918Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/9ae89893-742b-4f8e-8bbd-670f3b93b1b1.sh
                      2019-08-29T09:57:34.5625737Z Hello, world!
                      2019-08-29T09:57:34.5807302Z ##[section]Finishing: Run a one-line script', '2019-08-29T15:57:17.0000000+06:00', 16, N'Container'),
      (16, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:28.9058078Z ##[section]Starting: Checkout
                      2019-08-29T09:57:28.9317384Z ==============================================================================
                      2019-08-29T09:57:28.9317520Z Task         : Get sources
                      2019-08-29T09:57:28.9317561Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:28.9317621Z Version      : 1.0.0
                      2019-08-29T09:57:28.9317659Z Author       : Microsoft
                      2019-08-29T09:57:28.9317734Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:28.9317770Z ==============================================================================
                      2019-08-29T09:57:29.8225493Z Syncing repository: test (Git)
                      2019-08-29T09:57:30.3157936Z ##[command]git version
                      2019-08-29T09:57:30.5707256Z git version 2.23.0
                      2019-08-29T09:57:30.5875893Z ##[command]git lfs version
                      2019-08-29T09:57:31.3925701Z git-lfs/2.8.0 (GitHub; linux amd64; go 1.12.6)
                      2019-08-29T09:57:31.4276986Z ##[command]git init ''/home/vsts/work/1/s''
                      2019-08-29T09:57:31.4622774Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                      2019-08-29T09:57:31.4670557Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:31.4868228Z ##[command]git config gc.auto 0
                      2019-08-29T09:57:31.4941959Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                      2019-08-29T09:57:32.3121231Z ##[command]git config --get-all http.proxy
                      2019-08-29T09:57:32.3125439Z ##[command]git -c http.extraheader=''AUTHORIZATION: bearer ***'' fetch --force --tags --prune --progress --no-recurse-submodules origin
                      2019-08-29T09:57:32.3127484Z remote: Azure Repos        
                      2019-08-29T09:57:32.3127537Z remote: 
                      2019-08-29T09:57:32.3127573Z remote: Found 122 objects to send. (3 ms)        
                      2019-08-29T09:57:32.3127600Z 
                      2019-08-29T09:57:32.3127683Z                                                                                 
                      2019-08-29T09:57:32.3127722Z Receiving objects:   0% (1/122)
                      2019-08-29T09:57:32.3127746Z 
                      2019-08-29T09:57:32.3127799Z                                                                                 
                      2019-08-29T09:57:32.3127834Z Receiving objects:   1% (2/122)
                      2019-08-29T09:57:32.3127908Z 
                      2019-08-29T09:57:32.3127942Z                                                                                 
                      2019-08-29T09:57:32.3127977Z Receiving objects:   2% (3/122)
                      2019-08-29T09:57:32.3127999Z 
                      2019-08-29T09:57:32.3128080Z                                                                                 
                      2019-08-29T09:57:32.3128139Z Receiving objects:   3% (4/122)
                      2019-08-29T09:57:32.3128162Z 
                      2019-08-29T09:57:32.3128196Z                                                                                 
                      2019-08-29T09:57:32.3128230Z Receiving objects:   4% (5/122)
                      2019-08-29T09:57:32.3128407Z 
                      2019-08-29T09:57:32.3128441Z                                                                                 
                      2019-08-29T09:57:32.3128473Z Receiving objects:   5% (7/122)
                      2019-08-29T09:57:32.3128494Z 
                      2019-08-29T09:57:32.3128572Z                                                                                 
                      2019-08-29T09:57:32.3128614Z Receiving objects:   6% (8/122)
                      2019-08-29T09:57:32.3128635Z 
                      2019-08-29T09:57:32.3128668Z                                                                                 
                      2019-08-29T09:57:32.3128700Z Receiving objects:   7% (9/122)
                      2019-08-29T09:57:32.3128765Z 
                      2019-08-29T09:57:32.3128798Z                                                                                 
                      2019-08-29T09:57:32.3129160Z Receiving objects:   8% (10/122)
                      2019-08-29T09:57:32.3129183Z 
                      2019-08-29T09:57:32.3129282Z                                                                                 
                      2019-08-29T09:57:32.3129316Z Receiving objects:   9% (11/122)
                      2019-08-29T09:57:32.3129337Z 
                      2019-08-29T09:57:32.3129370Z                                                                                 
                      2019-08-29T09:57:32.3129447Z Receiving objects:  10% (13/122)
                      2019-08-29T09:57:32.3129469Z 
                      2019-08-29T09:57:32.3129502Z                                                                                 
                      2019-08-29T09:57:32.3129633Z Receiving objects:  11% (14/122)
                      2019-08-29T09:57:32.3129654Z 
                      2019-08-29T09:57:32.3129735Z                                                                                 
                      2019-08-29T09:57:32.3129769Z Receiving objects:  12% (15/122)
                      2019-08-29T09:57:32.3129789Z 
                      2019-08-29T09:57:32.3129823Z                                                                                 
                      2019-08-29T09:57:32.3129908Z Receiving objects:  13% (16/122)
                      2019-08-29T09:57:32.3129930Z 
                      2019-08-29T09:57:32.3129963Z                                                                                 
                      2019-08-29T09:57:32.3129995Z Receiving objects:  14% (18/122)
                      2019-08-29T09:57:32.3130015Z 
                      2019-08-29T09:57:32.3130095Z                                                                                 
                      2019-08-29T09:57:32.3130127Z Receiving objects:  15% (19/122)
                      2019-08-29T09:57:32.3130148Z 
                      2019-08-29T09:57:32.3130181Z                                                                                 
                      2019-08-29T09:57:32.3130384Z Receiving objects:  16% (20/122)
                      2019-08-29T09:57:32.3130408Z 
                      2019-08-29T09:57:32.3130439Z                                                                                 
                      2019-08-29T09:57:32.3130471Z Receiving objects:  17% (21/122)
                      2019-08-29T09:57:32.3130490Z 
                      2019-08-29T09:57:32.3130566Z                                                                                 
                      2019-08-29T09:57:32.3130605Z Receiving objects:  18% (22/122)
                      2019-08-29T09:57:32.3130626Z 
                      2019-08-29T09:57:32.3130657Z                                                                                 
                      2019-08-29T09:57:32.3130778Z Receiving objects:  19% (24/122)
                      2019-08-29T09:57:32.3130934Z 
                      2019-08-29T09:57:32.3130970Z                                                                                 
                      2019-08-29T09:57:32.3131041Z Receiving objects:  20% (25/122)
                      2019-08-29T09:57:32.3131063Z 
                      2019-08-29T09:57:32.3131145Z                                                                                 
                      2019-08-29T09:57:32.3131188Z Receiving objects:  21% (26/122)
                      2019-08-29T09:57:32.3131210Z 
                      2019-08-29T09:57:32.3131244Z                                                                                 
                      2019-08-29T09:57:32.3131323Z Receiving objects:  22% (27/122)
                      2019-08-29T09:57:32.3131346Z 
                      2019-08-29T09:57:32.3131381Z                                                                                 
                      2019-08-29T09:57:32.3131422Z Receiving objects:  23% (29/122)
                      2019-08-29T09:57:32.3131443Z 
                      2019-08-29T09:57:32.3131523Z                                                                                 
                      2019-08-29T09:57:32.3131559Z Receiving objects:  24% (30/122)
                      2019-08-29T09:57:32.3131580Z 
                      2019-08-29T09:57:32.3131615Z                                                                                 
                      2019-08-29T09:57:32.3131693Z Receiving objects:  25% (31/122)
                      2019-08-29T09:57:32.3131716Z 
                      2019-08-29T09:57:32.3131751Z                                                                                 
                      2019-08-29T09:57:32.3131792Z Receiving objects:  26% (32/122)
                      2019-08-29T09:57:32.3131813Z 
                      2019-08-29T09:57:32.3131891Z                                                                                 
                      2019-08-29T09:57:32.3131927Z Receiving objects:  27% (33/122)
                      2019-08-29T09:57:32.3131949Z 
                      2019-08-29T09:57:32.3131983Z                                                                                 
                      2019-08-29T09:57:32.3132105Z Receiving objects:  28% (35/122)
                      2019-08-29T09:57:32.3132180Z 
                      2019-08-29T09:57:32.3132214Z                                                                                 
                      2019-08-29T09:57:32.3132247Z Receiving objects:  29% (36/122)
                      2019-08-29T09:57:32.3132268Z 
                      2019-08-29T09:57:32.3132349Z                                                                                 
                      2019-08-29T09:57:32.3132393Z Receiving objects:  30% (37/122)
                      2019-08-29T09:57:32.3132415Z 
                      2019-08-29T09:57:32.3132449Z                                                                                 
                      2019-08-29T09:57:32.3132599Z Receiving objects:  31% (38/122)
                      2019-08-29T09:57:32.3132621Z 
                      2019-08-29T09:57:32.3132655Z                                                                                 
                      2019-08-29T09:57:32.3132689Z Receiving objects:  32% (40/122)
                      2019-08-29T09:57:32.3132759Z 
                      2019-08-29T09:57:32.3132795Z                                                                                 
                      2019-08-29T09:57:32.3132828Z Receiving objects:  33% (41/122)
                      2019-08-29T09:57:32.3132858Z 
                      2019-08-29T09:57:32.3132892Z                                                                                 
                      2019-08-29T09:57:32.3132975Z Receiving objects:  34% (42/122)
                      2019-08-29T09:57:32.3132997Z 
                      2019-08-29T09:57:32.3133031Z                                                                                 
                      2019-08-29T09:57:32.3133065Z Receiving objects:  35% (43/122)
                      2019-08-29T09:57:32.3133133Z 
                      2019-08-29T09:57:32.3133169Z                                                                                 
                      2019-08-29T09:57:32.3133209Z Receiving objects:  36% (44/122)
                      2019-08-29T09:57:32.3133231Z 
                      2019-08-29T09:57:32.3133265Z                                                                                 
                      2019-08-29T09:57:32.3133345Z Receiving objects:  37% (46/122)
                      2019-08-29T09:57:32.3133366Z 
                      2019-08-29T09:57:32.3133400Z                                                                                 
                      2019-08-29T09:57:32.3133432Z Receiving objects:  38% (47/122)
                      2019-08-29T09:57:32.3133508Z 
                      2019-08-29T09:57:32.3133544Z                                                                                 
                      2019-08-29T09:57:32.3133577Z Receiving objects:  39% (48/122)
                      2019-08-29T09:57:32.3133599Z 
                      2019-08-29T09:57:32.3133632Z                                                                                 
                      2019-08-29T09:57:32.3133713Z Receiving objects:  40% (49/122)
                      2019-08-29T09:57:32.3133735Z 
                      2019-08-29T09:57:32.3133769Z                                                                                 
                      2019-08-29T09:57:32.3133810Z Receiving objects:  41% (51/122)
                      2019-08-29T09:57:32.3133876Z 
                      2019-08-29T09:57:32.3133912Z                                                                                 
                      2019-08-29T09:57:32.3133945Z Receiving objects:  42% (52/122)
                      2019-08-29T09:57:32.3133967Z 
                      2019-08-29T09:57:32.3134001Z                                                                                 
                      2019-08-29T09:57:32.3134202Z Receiving objects:  43% (53/122)
                      2019-08-29T09:57:32.3134229Z 
                      2019-08-29T09:57:32.3134259Z                                                                                 
                      2019-08-29T09:57:32.3134287Z Receiving objects:  44% (54/122)
                      2019-08-29T09:57:32.3134348Z 
                      2019-08-29T09:57:32.3134379Z                                                                                 
                      2019-08-29T09:57:32.3134408Z Receiving objects:  45% (55/122)
                      2019-08-29T09:57:32.3134426Z 
                      2019-08-29T09:57:32.3134456Z                                                                                 
                      2019-08-29T09:57:32.3134530Z Receiving objects:  46% (57/122)
                      2019-08-29T09:57:32.3134555Z 
                      2019-08-29T09:57:32.3134586Z                                                                                 
                      2019-08-29T09:57:32.3134614Z Receiving objects:  47% (58/122)
                      2019-08-29T09:57:32.3134633Z 
                      2019-08-29T09:57:32.3134705Z                                                                                 
                      2019-08-29T09:57:32.3134734Z Receiving objects:  48% (59/122)
                      2019-08-29T09:57:32.3134813Z 
                      2019-08-29T09:57:32.3134844Z                                                                                 
                      2019-08-29T09:57:32.3134918Z Receiving objects:  49% (60/122)
                      2019-08-29T09:57:32.3134937Z 
                      2019-08-29T09:57:32.3134967Z                                                                                 
                      2019-08-29T09:57:32.3134996Z Receiving objects:  50% (61/122)
                      2019-08-29T09:57:32.3135014Z 
                      2019-08-29T09:57:32.3135086Z                                                                                 
                      2019-08-29T09:57:32.3135115Z Receiving objects:  51% (63/122)
                      2019-08-29T09:57:32.3135183Z 
                      2019-08-29T09:57:32.3135214Z                                                                                 
                      2019-08-29T09:57:32.3135289Z Receiving objects:  52% (64/122)
                      2019-08-29T09:57:32.3135307Z 
                      2019-08-29T09:57:32.3135337Z                                                                                 
                      2019-08-29T09:57:32.3135366Z Receiving objects:  53% (65/122)
                      2019-08-29T09:57:32.3135392Z 
                      2019-08-29T09:57:32.3135466Z                                                                                 
                      2019-08-29T09:57:32.3135496Z Receiving objects:  54% (66/122)
                      2019-08-29T09:57:32.3135515Z 
                      2019-08-29T09:57:32.3135545Z                                                                                 
                      2019-08-29T09:57:32.3135620Z Receiving objects:  55% (68/122)
                      2019-08-29T09:57:32.3135640Z 
                      2019-08-29T09:57:32.3135669Z                                                                                 
                      2019-08-29T09:57:32.3135698Z Receiving objects:  56% (69/122)
                      2019-08-29T09:57:32.3135723Z 
                      2019-08-29T09:57:32.3135794Z                                                                                 
                      2019-08-29T09:57:32.3135824Z Receiving objects:  57% (70/122)
                      2019-08-29T09:57:32.3135843Z 
                      2019-08-29T09:57:32.3135872Z                                                                                 
                      2019-08-29T09:57:32.3135946Z Receiving objects:  58% (71/122)
                      2019-08-29T09:57:32.3135965Z 
                      2019-08-29T09:57:32.3136002Z                                                                                 
                      2019-08-29T09:57:32.3136031Z Receiving objects:  59% (72/122)
                      2019-08-29T09:57:32.3136049Z 
                      2019-08-29T09:57:32.3136120Z                                                                                 
                      2019-08-29T09:57:32.3136150Z Receiving objects:  60% (74/122)
                      2019-08-29T09:57:32.3136168Z 
                      2019-08-29T09:57:32.3136198Z                                                                                 
                      2019-08-29T09:57:32.3136270Z Receiving objects:  61% (75/122)
                      2019-08-29T09:57:32.3136296Z 
                      2019-08-29T09:57:32.3136326Z                                                                                 
                      2019-08-29T09:57:32.3136355Z Receiving objects:  62% (76/122)
                      2019-08-29T09:57:32.3136373Z 
                      2019-08-29T09:57:32.3136443Z                                                                                 
                      2019-08-29T09:57:32.3136473Z Receiving objects:  63% (77/122)
                      2019-08-29T09:57:32.3136491Z 
                      2019-08-29T09:57:32.3136526Z                                                                                 
                      2019-08-29T09:57:32.3136594Z Receiving objects:  64% (79/122)
                      2019-08-29T09:57:32.3136614Z 
                      2019-08-29T09:57:32.3136644Z                                                                                 
                      2019-08-29T09:57:32.3136673Z Receiving objects:  65% (80/122)
                      2019-08-29T09:57:32.3136691Z 
                      2019-08-29T09:57:32.3136766Z                                                                                 
                      2019-08-29T09:57:32.3136795Z Receiving objects:  66% (81/122)
                      2019-08-29T09:57:32.3136814Z 
                      2019-08-29T09:57:32.3136850Z                                                                                 
                      2019-08-29T09:57:32.3136919Z Receiving objects:  67% (82/122)
                      2019-08-29T09:57:32.3136938Z 
                      2019-08-29T09:57:32.3136968Z                                                                                 
                      2019-08-29T09:57:32.3136996Z Receiving objects:  68% (83/122)
                      2019-08-29T09:57:32.3137015Z 
                      2019-08-29T09:57:32.3137084Z                                                                                 
                      2019-08-29T09:57:32.3137173Z Receiving objects:  69% (85/122)
                      2019-08-29T09:57:32.3137192Z 
                      2019-08-29T09:57:32.3137223Z                                                                                 
                      2019-08-29T09:57:32.3137294Z Receiving objects:  70% (86/122)
                      2019-08-29T09:57:32.3137314Z 
                      2019-08-29T09:57:32.3137344Z                                                                                 
                      2019-08-29T09:57:32.3137373Z Receiving objects:  71% (87/122)
                      2019-08-29T09:57:32.3138149Z 
                      2019-08-29T09:57:32.3138812Z                                                                                 
                      2019-08-29T09:57:32.3138871Z Receiving objects:  72% (88/122)
                      2019-08-29T09:57:32.3138895Z 
                      2019-08-29T09:57:32.3139006Z                                                                                 
                      2019-08-29T09:57:32.3139042Z Receiving objects:  73% (90/122)
                      2019-08-29T09:57:32.3139064Z 
                      2019-08-29T09:57:32.3139100Z                                                                                 
                      2019-08-29T09:57:32.3139198Z Receiving objects:  74% (91/122)
                      2019-08-29T09:57:32.3139221Z 
                      2019-08-29T09:57:32.3139256Z                                                                                 
                      2019-08-29T09:57:32.3139289Z Receiving objects:  75% (92/122)
                      2019-08-29T09:57:32.3139359Z 
                      2019-08-29T09:57:32.3139395Z                                                                                 
                      2019-08-29T09:57:32.3139428Z Receiving objects:  76% (93/122)
                      2019-08-29T09:57:32.3139450Z 
                      2019-08-29T09:57:32.3139484Z                                                                                 
                      2019-08-29T09:57:32.3139576Z Receiving objects:  77% (94/122)
                      2019-08-29T09:57:32.3139599Z 
                      2019-08-29T09:57:32.3139633Z                                                                                 
                      2019-08-29T09:57:32.3139667Z Receiving objects:  78% (96/122)
                      2019-08-29T09:57:32.3139736Z 
                      2019-08-29T09:57:32.3139772Z                                                                                 
                      2019-08-29T09:57:32.3139813Z Receiving objects:  79% (97/122)
                      2019-08-29T09:57:32.3139835Z 
                      2019-08-29T09:57:32.3139869Z                                                                                 
                      2019-08-29T09:57:32.3139952Z Receiving objects:  80% (98/122)
                      2019-08-29T09:57:32.3139975Z 
                      2019-08-29T09:57:32.3140010Z                                                                                 
                      2019-08-29T09:57:32.3140045Z Receiving objects:  81% (99/122)
                      2019-08-29T09:57:32.3140067Z 
                      2019-08-29T09:57:32.3140146Z                                                                                 
                      2019-08-29T09:57:32.3140187Z Receiving objects:  82% (101/122)
                      2019-08-29T09:57:32.3140211Z 
                      2019-08-29T09:57:32.3140245Z                                                                                 
                      2019-08-29T09:57:32.3140324Z Receiving objects:  83% (102/122)
                      2019-08-29T09:57:32.3140347Z 
                      2019-08-29T09:57:32.3140381Z                                                                                 
                      2019-08-29T09:57:32.3140422Z Receiving objects:  84% (103/122)
                      2019-08-29T09:57:32.3140445Z 
                      2019-08-29T09:57:32.3140526Z                                                                                 
                      2019-08-29T09:57:32.3140559Z Receiving objects:  85% (104/122)
                      2019-08-29T09:57:32.3140581Z 
                      2019-08-29T09:57:32.3140615Z                                                                                 
                      2019-08-29T09:57:32.3140695Z Receiving objects:  86% (105/122)
                      2019-08-29T09:57:32.3140718Z 
                      2019-08-29T09:57:32.3140752Z                                                                                 
                      2019-08-29T09:57:32.3140794Z Receiving objects:  87% (107/122)
                      2019-08-29T09:57:32.3140816Z 
                      2019-08-29T09:57:32.3140895Z                                                                                 
                      2019-08-29T09:57:32.3141150Z Receiving objects:  88% (108/122)
                      2019-08-29T09:57:32.3141179Z 
                      2019-08-29T09:57:32.3141214Z                                                                                 
                      2019-08-29T09:57:32.3142131Z Receiving objects:  89% (109/122)
                      2019-08-29T09:57:32.3142165Z 
                      2019-08-29T09:57:32.3142201Z                                                                                 
                      2019-08-29T09:57:32.3142235Z Receiving objects:  90% (110/122)
                      2019-08-29T09:57:32.3142257Z 
                      2019-08-29T09:57:32.3142338Z                                                                                 
                      2019-08-29T09:57:32.3142372Z Receiving objects:  91% (112/122)
                      2019-08-29T09:57:32.3142394Z 
                      2019-08-29T09:57:32.3142429Z                                                                                 
                      2019-08-29T09:57:32.3142618Z Receiving objects:  92% (113/122)
                      2019-08-29T09:57:32.3142640Z 
                      2019-08-29T09:57:32.3142675Z                                                                                 
                      2019-08-29T09:57:32.3142708Z Receiving objects:  93% (114/122)
                      2019-08-29T09:57:32.3142729Z 
                      2019-08-29T09:57:32.3142813Z                                                                                 
                      2019-08-29T09:57:32.3142856Z Receiving objects:  94% (115/122)
                      2019-08-29T09:57:32.3142877Z 
                      2019-08-29T09:57:32.3142912Z                                                                                 
                      2019-08-29T09:57:32.3142993Z Receiving objects:  95% (116/122)
                      2019-08-29T09:57:32.3143015Z 
                      2019-08-29T09:57:32.3143051Z                                                                                 
                      2019-08-29T09:57:32.3143085Z Receiving objects:  96% (118/122)
                      2019-08-29T09:57:32.3143107Z 
                      2019-08-29T09:57:32.3143188Z                                                                                 
                      2019-08-29T09:57:32.3143230Z Receiving objects:  97% (119/122)
                      2019-08-29T09:57:32.3143252Z 
                      2019-08-29T09:57:32.3143286Z                                                                                 
                      2019-08-29T09:57:32.3143364Z Receiving objects:  98% (120/122)
                      2019-08-29T09:57:32.3143388Z 
                      2019-08-29T09:57:32.3143423Z                                                                                 
                      2019-08-29T09:57:32.3143465Z Receiving objects:  99% (121/122)
                      2019-08-29T09:57:32.3143486Z 
                      2019-08-29T09:57:32.3143566Z                                                                                 
                      2019-08-29T09:57:32.3143600Z Receiving objects: 100% (122/122)
                      2019-08-29T09:57:32.3143621Z 
                      2019-08-29T09:57:32.3143655Z                                                                                 
                      2019-08-29T09:57:32.3143734Z Receiving objects: 100% (122/122), 26.76 KiB | 26.76 MiB/s, done.
                      2019-08-29T09:57:32.3143760Z 
                      2019-08-29T09:57:32.3143795Z                                                                                 
                      2019-08-29T09:57:32.3143836Z Resolving deltas:   0% (0/2)
                      2019-08-29T09:57:32.3143859Z 
                      2019-08-29T09:57:32.3143940Z                                                                                 
                      2019-08-29T09:57:32.3143974Z Resolving deltas: 100% (2/2)
                      2019-08-29T09:57:32.3143996Z 
                      2019-08-29T09:57:32.3144030Z                                                                                 
                      2019-08-29T09:57:32.3144245Z Resolving deltas: 100% (2/2), done.
                      2019-08-29T09:57:32.3580900Z From https://dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:32.3585582Z  * [new branch]      1234                    -> origin/1234
                      2019-08-29T09:57:32.3592005Z  * [new branch]      aaa                     -> origin/aaa
                      2019-08-29T09:57:32.3595762Z  * [new branch]      azaza                   -> origin/azaza
                      2019-08-29T09:57:32.3599703Z  * [new branch]      azaza1                  -> origin/azaza1
                      2019-08-29T09:57:32.3607982Z  * [new branch]      master                  -> origin/master
                      2019-08-29T09:57:32.3616283Z  * [new branch]      release-08.17           -> origin/release-08.17
                      2019-08-29T09:57:32.3616994Z  * [new branch]      release-08.19           -> origin/release-08.19
                      2019-08-29T09:57:32.3617645Z  * [new branch]      release-08.22           -> origin/release-08.22
                      2019-08-29T09:57:32.3619774Z  * [new branch]      release-08.2210         -> origin/release-08.2210
                      2019-08-29T09:57:32.3623614Z  * [new branch]      release-08.2211         -> origin/release-08.2211
                      2019-08-29T09:57:32.3624376Z  * [new branch]      release-08.221234561    -> origin/release-08.221234561
                      2019-08-29T09:57:32.3626738Z  * [new branch]      release-08.221234562    -> origin/release-08.221234562
                      2019-08-29T09:57:32.3627061Z  * [new branch]      release-08.221234563    -> origin/release-08.221234563
                      2019-08-29T09:57:32.3627678Z  * [new branch]      release-08.221234564    -> origin/release-08.221234564
                      2019-08-29T09:57:32.3628050Z  * [new branch]      release-08.221234565    -> origin/release-08.221234565
                      2019-08-29T09:57:32.3628535Z  * [new branch]      release-08.221234567    -> origin/release-08.221234567
                      2019-08-29T09:57:32.3628883Z  * [new branch]      release-08.2212345671   -> origin/release-08.2212345671
                      2019-08-29T09:57:32.3629127Z  * [new branch]      release-08.22123456712  -> origin/release-08.22123456712
                      2019-08-29T09:57:32.3629361Z  * [new branch]      release-08.2212S        -> origin/release-08.2212S
                      2019-08-29T09:57:32.3641809Z  * [new branch]      release-08.223          -> origin/release-08.223
                      2019-08-29T09:57:32.3644175Z  * [new branch]      release-08.224          -> origin/release-08.224
                      2019-08-29T09:57:32.3647890Z  * [new branch]      release-08.225          -> origin/release-08.225
                      2019-08-29T09:57:32.3805712Z  * [new branch]      release-08.226          -> origin/release-08.226
                      2019-08-29T09:57:32.3806167Z  * [new branch]      release-08.227          -> origin/release-08.227
                      2019-08-29T09:57:32.3806533Z  * [new branch]      release-08.228          -> origin/release-08.228
                      2019-08-29T09:57:32.3806870Z  * [new branch]      release-08.229          -> origin/release-08.229
                      2019-08-29T09:57:32.3807113Z  * [new branch]      release-08.22taukewk1a  -> origin/release-08.22taukewk1a
                      2019-08-29T09:57:32.3807356Z  * [new branch]      release-08.22taukewk1a3 -> origin/release-08.22taukewk1a3
                      2019-08-29T09:57:32.3807647Z  * [new branch]      release-08.22taukewka   -> origin/release-08.22taukewka
                      2019-08-29T09:57:32.3807907Z  * [new branch]      release-08.22test       -> origin/release-08.22test
                      2019-08-29T09:57:32.3808141Z  * [new branch]      release-08.22test1      -> origin/release-08.22test1
                      2019-08-29T09:57:32.3808376Z  * [new branch]      release-08.22test12     -> origin/release-08.22test12
                      2019-08-29T09:57:32.3808670Z  * [new branch]      release-08.22test122    -> origin/release-08.22test122
                      2019-08-29T09:57:32.3808908Z  * [new branch]      release-08.22test1223   -> origin/release-08.22test1223
                      2019-08-29T09:57:32.3809145Z  * [new branch]      release-08.22test12234  -> origin/release-08.22test12234
                      2019-08-29T09:57:32.3809386Z  * [new branch]      release-08.22yeaah      -> origin/release-08.22yeaah
                      2019-08-29T09:57:32.3809678Z  * [new branch]      release-08.22yeaah1     -> origin/release-08.22yeaah1
                      2019-08-29T09:57:32.3810027Z  * [new branch]      release-08.22yeaah1w    -> origin/release-08.22yeaah1w
                      2019-08-29T09:57:32.3810263Z  * [new branch]      release-08.23           -> origin/release-08.23
                      2019-08-29T09:57:32.3810560Z  * [new branch]      release-08.25           -> origin/release-08.25
                      2019-08-29T09:57:32.3811285Z  * [new branch]      release-08.26           -> origin/release-08.26
                      2019-08-29T09:57:32.3811608Z  * [new branch]      release-08.29           -> origin/release-08.29
                      2019-08-29T09:57:32.3811843Z  * [new branch]      test                    -> origin/test
                      2019-08-29T09:57:32.3812145Z  * [new branch]      test123                 -> origin/test123
                      2019-08-29T09:57:32.4840692Z ##[command]git checkout --progress --force b43bd6a1785759a7bae16a37a956f9389dcc73a4
                      2019-08-29T09:57:32.4843337Z Note: switching to ''b43bd6a1785759a7bae16a37a956f9389dcc73a4''.
                      2019-08-29T09:57:32.4843383Z 
                      2019-08-29T09:57:32.4843627Z You are in ''detached HEAD'' state. You can look around, make experimental
                      2019-08-29T09:57:32.4843684Z changes and commit them, and you can discard any commits you make in this
                      2019-08-29T09:57:32.4843722Z state without impacting any branches by switching back to a branch.
                      2019-08-29T09:57:32.4843997Z 
                      2019-08-29T09:57:32.4844035Z If you want to create a new branch to retain commits you create, you may
                      2019-08-29T09:57:32.4844427Z do so (now or later) by using -c with the switch command. Example:
                      2019-08-29T09:57:32.4844456Z 
                      2019-08-29T09:57:32.4844657Z   git switch -c <new-branch-name>
                      2019-08-29T09:57:32.4844807Z 
                      2019-08-29T09:57:32.4844840Z Or undo this operation with:
                      2019-08-29T09:57:32.4844870Z 
                      2019-08-29T09:57:32.4845049Z   git switch -
                      2019-08-29T09:57:32.4845074Z 
                      2019-08-29T09:57:32.4845109Z Turn off this advice by setting config variable advice.detachedHead to false
                      2019-08-29T09:57:32.4845229Z 
                      2019-08-29T09:57:32.4845472Z HEAD is now at b43bd6a Updated azure-pipelines.yml
                      2019-08-29T09:57:32.4913488Z ##[section]Finishing: Checkout', '2019-08-29T15:57:17.0000000+06:00', 404, N'Container'),
      (15, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:27.3044562Z ##[section]Starting: Initialize job
                      2019-08-29T09:57:27.3044795Z Current agent version: ''2.155.1''
                      2019-08-29T09:57:27.3220420Z Prepare build directory.
                      2019-08-29T09:57:27.3498879Z Set build variables.
                      2019-08-29T09:57:27.3546410Z Download all required tasks.
                      2019-08-29T09:57:27.3709101Z Downloading task: CmdLine
                      2019-08-29T09:57:27.9033181Z Downloading task: PowerShell
                      2019-08-29T09:57:28.8421829Z Start tracking orphan processes.
                      2019-08-29T09:57:28.8593407Z ##[section]Finishing: Initialize job', '2019-08-29T15:57:17.0000000+06:00', 10, N'Container'),
      (14, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:17.9296049Z ##[section]Starting: Prepare job Job
                      2019-08-29T09:57:17.9395121Z ContinueOnError: False
                      2019-08-29T09:57:17.9395121Z TimeoutInMinutes: 60
                      2019-08-29T09:57:17.9395121Z CancelTimeoutInMinutes: 5
                      2019-08-29T09:57:17.9395121Z Expand:
                      2019-08-29T09:57:17.9395121Z   ########## System Pipeline Decorator(s) ##########
      
                      2019-08-29T09:57:17.9395121Z   Begin evaluating template ''system-pre-steps.yml''
                      Evaluating: eq(''true'', variables[''system.debugContext''])
                      Expanded: eq(''true'', Null)
                      Result: False
                      Evaluating: resources[''repositories''][''self'']
                      Expanded: Object
                      Result: True
                      Evaluating: not(containsValue(job[''steps''][''*''][''task''][''id''], ''6d15af64-176c-496d-b583-fd2ae21d4df4''))
                      Expanded: not(containsValue(Object, ''6d15af64-176c-496d-b583-fd2ae21d4df4''))
                      Result: True
                      Evaluating: resources[''repositories''][''self''][''checkoutOptions'']
                      Result: Object
                      Finished evaluating template ''system-pre-steps.yml''
                      ********************************************************************************
                      Template and static variable resolution complete. Final runtime YAML document:
                      steps:
                      - task: 6d15af64-176c-496d-b583-fd2ae21d4df4@1
                          inputs:
                          repository: self
      
      
                      2019-08-29T09:57:17.9445129Z   MaxConcurrency: 0
                      2019-08-29T09:57:17.9495137Z ##[section]Finishing: Prepare job Job', '2019-08-29T15:57:17.0000000+06:00', 31, N'Container'),
      (13, 2, '2019-08-29T15:57:16.9870000+06:00', N'Begin evaluating template ''/azure-pipelines.yml''
                      Begin transform: variables
                      Evaluating: value
                      Result: Object
                      Evaluating: pair[''key'']
                      Result: ''Build.DropRoot''
                      Evaluating: pair[''value'']
                      Result: ''\\bies-pbi''
                      End transform: variables
                      Begin transform: trigger
                      Evaluating: value
                      Result: Object
                      End transform: trigger
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''script'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Run a one-line script''
                      Result: Object
                      Evaluating: value[''script'']
                      Result: ''echo Hello, world!''
                      Evaluating: value[''failOnStderr'']
                      Expanded: Null
                      Result: False
                      Evaluating: value[''workingDirectory'']
                      Expanded: Null
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''powershell'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Set Build Variables''
                      Result: Object
                      Evaluating: value[''powershell'']
                      Result: ''$dropRoot = ''$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID''
                      Write-Host ''dropRoot  is $dropRoot''
                      Write-Host ''##vso[task.setvariable variable=Build.DropRoot]$dropRoot''
                      ''
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''powershell'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''displayName'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''powershell'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Get Setted variables''
                      Result: Object
                      Evaluating: value[''powershell'']
                      Result: ''Write-Host ''Build.DropRoot = $env:BUILD_DROPROOT''
                      ''
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''powershell'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''displayName'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''script'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Run a multi-line script''
                      Result: Object
                      Evaluating: value[''script'']
                      Result: ''echo Add other tasks to build, test, and deploy your project.
                      echo See https://aka.ms/yaml
                      ''
                      Evaluating: value[''failOnStderr'']
                      Expanded: Null
                      Result: False
                      Evaluating: value[''workingDirectory'']
                      Expanded: Null
                      Result: False
                      End transform: step
                      Begin transform: pipeline
                      Evaluating: value
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''variables'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''variables''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''trigger'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''trigger''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''pool'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''steps'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''variables'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''trigger'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''pool'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''pool''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''steps'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''steps''
                      Evaluating: pair[''value'']
                      Result: Object
                      End transform: pipeline
                      Finished evaluating template ''/azure-pipelines.yml''
                      ********************************************************************************
                      Template and static variable resolution complete. Final runtime YAML document:
                      variables:
                      - name: Build.DropRoot
                          value: ''\\bies-pbi''
                      trigger:
                          branches:
                          include:
                          - ''*''
                      stages:
                      - stage: __default
                          jobs:
                          - job: Job
                          pool:
                              vmImage: ubuntu-latest
                          steps:
                          - task: CmdLine@2
                              displayName: Run a one-line script
                              inputs:
                              script: echo Hello, world!
                          - task: PowerShell@2
                              displayName: Set Build Variables
                              inputs:
                              targetType: inline
                              script: >
                                  $dropRoot = ''$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID''
      
                                  Write-Host ''dropRoot  is $dropRoot''
      
                                  Write-Host ''##vso[task.setvariable variable=Build.DropRoot]$dropRoot''
                          - task: PowerShell@2
                              displayName: Get Setted variables
                              inputs:
                              targetType: inline
                              script: >
                                  Write-Host ''Build.DropRoot = $env:BUILD_DROPROOT''
                          - task: CmdLine@2
                              displayName: Run a multi-line script
                              inputs:
                              script: >
                                  echo Add other tasks to build, test, and deploy your project.
      
                                  echo See https://aka.ms/yaml', '2019-08-29T15:57:17.0000000+06:00', 211, N'Container'),
      (24, 2, '2019-08-29T15:57:16.9870000+06:00', N'Set build status for commit b43bd6.', '2019-08-29T15:57:17.0000000+06:00', 2, N'Container'),
      (22, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:41.4828452Z ##[section]Starting: Finalize Job
                      2019-08-29T09:57:41.4871844Z Start cleaning up orphan processes.
                      2019-08-29T09:57:41.4965521Z ##[section]Finishing: Finalize Job', '2019-08-29T15:57:17.0000000+06:00', 4, N'Container'),
      (12, 1, '2019-08-29T15:57:16.9870000+06:00', N'Set build status for commit b43bd6.', '2019-08-29T15:57:17.0000000+06:00', 2, N'Container'),
      (10, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:41.4828452Z ##[section]Starting: Finalize Job
                      2019-08-29T09:57:41.4871844Z Start cleaning up orphan processes.
                      2019-08-29T09:57:41.4965521Z ##[section]Finishing: Finalize Job', '2019-08-29T15:57:17.0000000+06:00', 4, N'Container'),
      (9, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:41.0570305Z ##[section]Starting: Checkout
                      2019-08-29T09:57:41.0571897Z ==============================================================================
                      2019-08-29T09:57:41.0571993Z Task         : Get sources
                      2019-08-29T09:57:41.0572027Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:41.0572059Z Version      : 1.0.0
                      2019-08-29T09:57:41.0572131Z Author       : Microsoft
                      2019-08-29T09:57:41.0572164Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:41.0572195Z ==============================================================================
                      2019-08-29T09:57:41.4718178Z Cleaning any cached credential from repository: test (Git)
                      2019-08-29T09:57:41.4759342Z ##[section]Finishing: Checkout', '2019-08-29T15:57:17.0000000+06:00', 11, N'Container'),
      (8, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:40.9042245Z ##[section]Starting: Run a multi-line script
                      2019-08-29T09:57:40.9044902Z ==============================================================================
                      2019-08-29T09:57:40.9045010Z Task         : Command line
                      2019-08-29T09:57:40.9045046Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:40.9045081Z Version      : 2.151.2
                      2019-08-29T09:57:40.9045161Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.9045196Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:40.9045231Z ==============================================================================
                      2019-08-29T09:57:41.0349566Z Generating script.
                      2019-08-29T09:57:41.0373008Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:41.0403393Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/f9d6fee3-f45b-4b03-9588-5b245e1cf62d.sh
                      2019-08-29T09:57:41.0487472Z Add other tasks to build, test, and deploy your project.
                      2019-08-29T09:57:41.0487882Z See https://aka.ms/yaml
                      2019-08-29T09:57:41.0560668Z ##[section]Finishing: Run a multi-line script', '2019-08-29T15:57:17.0000000+06:00', 15, N'Container'),
      (7, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:40.1795377Z ##[section]Starting: Get Setted variables
                      2019-08-29T09:57:40.1798679Z ==============================================================================
                      2019-08-29T09:57:40.1798741Z Task         : PowerShell
                      2019-08-29T09:57:40.1798776Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:40.1798812Z Version      : 2.151.2
                      2019-08-29T09:57:40.1798892Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.1798928Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:40.1798962Z ==============================================================================
                      2019-08-29T09:57:40.3135221Z Generating script.
                      2019-08-29T09:57:40.3159305Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:40.3190581Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1''
                      2019-08-29T09:57:40.8535753Z Build.DropRoot = \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.9035381Z ##[section]Finishing: Get Setted variables', '2019-08-29T15:57:17.0000000+06:00', 14, N'Container'),
      (6, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:34.5813648Z ##[section]Starting: Set Build Variables
                      2019-08-29T09:57:34.5816676Z ==============================================================================
                      2019-08-29T09:57:34.5816780Z Task         : PowerShell
                      2019-08-29T09:57:34.5816814Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:34.5816847Z Version      : 2.151.2
                      2019-08-29T09:57:34.5816921Z Author       : Microsoft Corporation
                      2019-08-29T09:57:34.5816956Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:34.5816989Z ==============================================================================
                      2019-08-29T09:57:34.7196982Z Generating script.
                      2019-08-29T09:57:34.7227968Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.7261413Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1''
                      2019-08-29T09:57:40.0409308Z dropRoot  is \\bies-pbi\release-08.29\459
                                  2019-08-29T09:57:40.1789175Z ##[section]Finishing: Set Build Variables', '2019-08-29T15:57:17.0000000+06:00', 14, N'Container'),
      (5, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:32.4928850Z ##[section]Starting: Run a one-line script
                      2019-08-29T09:57:32.4931670Z ==============================================================================
                      2019-08-29T09:57:32.4931807Z Task         : Command line
                      2019-08-29T09:57:32.4931873Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:32.4931909Z Version      : 2.151.2
                      2019-08-29T09:57:32.4931942Z Author       : Microsoft Corporation
                      2019-08-29T09:57:32.4931988Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:32.4932023Z ==============================================================================
                      2019-08-29T09:57:34.5362659Z Generating script.
                      2019-08-29T09:57:34.5382579Z Script contents:
                      2019-08-29T09:57:34.5383066Z echo Hello, world!
                      2019-08-29T09:57:34.5383404Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.5437918Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/9ae89893-742b-4f8e-8bbd-670f3b93b1b1.sh
                      2019-08-29T09:57:34.5625737Z Hello, world!
                      2019-08-29T09:57:34.5807302Z ##[section]Finishing: Run a one-line script', '2019-08-29T15:57:17.0000000+06:00', 16, N'Container'),
      (4, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:28.9058078Z ##[section]Starting: Checkout
                      2019-08-29T09:57:28.9317384Z ==============================================================================
                      2019-08-29T09:57:28.9317520Z Task         : Get sources
                      2019-08-29T09:57:28.9317561Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:28.9317621Z Version      : 1.0.0
                      2019-08-29T09:57:28.9317659Z Author       : Microsoft
                      2019-08-29T09:57:28.9317734Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:28.9317770Z ==============================================================================
                      2019-08-29T09:57:29.8225493Z Syncing repository: test (Git)
                      2019-08-29T09:57:30.3157936Z ##[command]git version
                      2019-08-29T09:57:30.5707256Z git version 2.23.0
                      2019-08-29T09:57:30.5875893Z ##[command]git lfs version
                      2019-08-29T09:57:31.3925701Z git-lfs/2.8.0 (GitHub; linux amd64; go 1.12.6)
                      2019-08-29T09:57:31.4276986Z ##[command]git init ''/home/vsts/work/1/s''
                      2019-08-29T09:57:31.4622774Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                      2019-08-29T09:57:31.4670557Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:31.4868228Z ##[command]git config gc.auto 0
                      2019-08-29T09:57:31.4941959Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                      2019-08-29T09:57:32.3121231Z ##[command]git config --get-all http.proxy
                      2019-08-29T09:57:32.3125439Z ##[command]git -c http.extraheader=''AUTHORIZATION: bearer ***'' fetch --force --tags --prune --progress --no-recurse-submodules origin
                      2019-08-29T09:57:32.3127484Z remote: Azure Repos        
                      2019-08-29T09:57:32.3127537Z remote: 
                      2019-08-29T09:57:32.3127573Z remote: Found 122 objects to send. (3 ms)        
                      2019-08-29T09:57:32.3127600Z 
                      2019-08-29T09:57:32.3127683Z                                                                                 
                      2019-08-29T09:57:32.3127722Z Receiving objects:   0% (1/122)
                      2019-08-29T09:57:32.3127746Z 
                      2019-08-29T09:57:32.3127799Z                                                                                 
                      2019-08-29T09:57:32.3127834Z Receiving objects:   1% (2/122)
                      2019-08-29T09:57:32.3127908Z 
                      2019-08-29T09:57:32.3127942Z                                                                                 
                      2019-08-29T09:57:32.3127977Z Receiving objects:   2% (3/122)
                      2019-08-29T09:57:32.3127999Z 
                      2019-08-29T09:57:32.3128080Z                                                                                 
                      2019-08-29T09:57:32.3128139Z Receiving objects:   3% (4/122)
                      2019-08-29T09:57:32.3128162Z 
                      2019-08-29T09:57:32.3128196Z                                                                                 
                      2019-08-29T09:57:32.3128230Z Receiving objects:   4% (5/122)
                      2019-08-29T09:57:32.3128407Z 
                      2019-08-29T09:57:32.3128441Z                                                                                 
                      2019-08-29T09:57:32.3128473Z Receiving objects:   5% (7/122)
                      2019-08-29T09:57:32.3128494Z 
                      2019-08-29T09:57:32.3128572Z                                                                                 
                      2019-08-29T09:57:32.3128614Z Receiving objects:   6% (8/122)
                      2019-08-29T09:57:32.3128635Z 
                      2019-08-29T09:57:32.3128668Z                                                                                 
                      2019-08-29T09:57:32.3128700Z Receiving objects:   7% (9/122)
                      2019-08-29T09:57:32.3128765Z 
                      2019-08-29T09:57:32.3128798Z                                                                                 
                      2019-08-29T09:57:32.3129160Z Receiving objects:   8% (10/122)
                      2019-08-29T09:57:32.3129183Z 
                      2019-08-29T09:57:32.3129282Z                                                                                 
                      2019-08-29T09:57:32.3129316Z Receiving objects:   9% (11/122)
                      2019-08-29T09:57:32.3129337Z 
                      2019-08-29T09:57:32.3129370Z                                                                                 
                      2019-08-29T09:57:32.3129447Z Receiving objects:  10% (13/122)
                      2019-08-29T09:57:32.3129469Z 
                      2019-08-29T09:57:32.3129502Z                                                                                 
                      2019-08-29T09:57:32.3129633Z Receiving objects:  11% (14/122)
                      2019-08-29T09:57:32.3129654Z 
                      2019-08-29T09:57:32.3129735Z                                                                                 
                      2019-08-29T09:57:32.3129769Z Receiving objects:  12% (15/122)
                      2019-08-29T09:57:32.3129789Z 
                      2019-08-29T09:57:32.3129823Z                                                                                 
                      2019-08-29T09:57:32.3129908Z Receiving objects:  13% (16/122)
                      2019-08-29T09:57:32.3129930Z 
                      2019-08-29T09:57:32.3129963Z                                                                                 
                      2019-08-29T09:57:32.3129995Z Receiving objects:  14% (18/122)
                      2019-08-29T09:57:32.3130015Z 
                      2019-08-29T09:57:32.3130095Z                                                                                 
                      2019-08-29T09:57:32.3130127Z Receiving objects:  15% (19/122)
                      2019-08-29T09:57:32.3130148Z 
                      2019-08-29T09:57:32.3130181Z                                                                                 
                      2019-08-29T09:57:32.3130384Z Receiving objects:  16% (20/122)
                      2019-08-29T09:57:32.3130408Z 
                      2019-08-29T09:57:32.3130439Z                                                                                 
                      2019-08-29T09:57:32.3130471Z Receiving objects:  17% (21/122)
                      2019-08-29T09:57:32.3130490Z 
                      2019-08-29T09:57:32.3130566Z                                                                                 
                      2019-08-29T09:57:32.3130605Z Receiving objects:  18% (22/122)
                      2019-08-29T09:57:32.3130626Z 
                      2019-08-29T09:57:32.3130657Z                                                                                 
                      2019-08-29T09:57:32.3130778Z Receiving objects:  19% (24/122)
                      2019-08-29T09:57:32.3130934Z 
                      2019-08-29T09:57:32.3130970Z                                                                                 
                      2019-08-29T09:57:32.3131041Z Receiving objects:  20% (25/122)
                      2019-08-29T09:57:32.3131063Z 
                      2019-08-29T09:57:32.3131145Z                                                                                 
                      2019-08-29T09:57:32.3131188Z Receiving objects:  21% (26/122)
                      2019-08-29T09:57:32.3131210Z 
                      2019-08-29T09:57:32.3131244Z                                                                                 
                      2019-08-29T09:57:32.3131323Z Receiving objects:  22% (27/122)
                      2019-08-29T09:57:32.3131346Z 
                      2019-08-29T09:57:32.3131381Z                                                                                 
                      2019-08-29T09:57:32.3131422Z Receiving objects:  23% (29/122)
                      2019-08-29T09:57:32.3131443Z 
                      2019-08-29T09:57:32.3131523Z                                                                                 
                      2019-08-29T09:57:32.3131559Z Receiving objects:  24% (30/122)
                      2019-08-29T09:57:32.3131580Z 
                      2019-08-29T09:57:32.3131615Z                                                                                 
                      2019-08-29T09:57:32.3131693Z Receiving objects:  25% (31/122)
                      2019-08-29T09:57:32.3131716Z 
                      2019-08-29T09:57:32.3131751Z                                                                                 
                      2019-08-29T09:57:32.3131792Z Receiving objects:  26% (32/122)
                      2019-08-29T09:57:32.3131813Z 
                      2019-08-29T09:57:32.3131891Z                                                                                 
                      2019-08-29T09:57:32.3131927Z Receiving objects:  27% (33/122)
                      2019-08-29T09:57:32.3131949Z 
                      2019-08-29T09:57:32.3131983Z                                                                                 
                      2019-08-29T09:57:32.3132105Z Receiving objects:  28% (35/122)
                      2019-08-29T09:57:32.3132180Z 
                      2019-08-29T09:57:32.3132214Z                                                                                 
                      2019-08-29T09:57:32.3132247Z Receiving objects:  29% (36/122)
                      2019-08-29T09:57:32.3132268Z 
                      2019-08-29T09:57:32.3132349Z                                                                                 
                      2019-08-29T09:57:32.3132393Z Receiving objects:  30% (37/122)
                      2019-08-29T09:57:32.3132415Z 
                      2019-08-29T09:57:32.3132449Z                                                                                 
                      2019-08-29T09:57:32.3132599Z Receiving objects:  31% (38/122)
                      2019-08-29T09:57:32.3132621Z 
                      2019-08-29T09:57:32.3132655Z                                                                                 
                      2019-08-29T09:57:32.3132689Z Receiving objects:  32% (40/122)
                      2019-08-29T09:57:32.3132759Z 
                      2019-08-29T09:57:32.3132795Z                                                                                 
                      2019-08-29T09:57:32.3132828Z Receiving objects:  33% (41/122)
                      2019-08-29T09:57:32.3132858Z 
                      2019-08-29T09:57:32.3132892Z                                                                                 
                      2019-08-29T09:57:32.3132975Z Receiving objects:  34% (42/122)
                      2019-08-29T09:57:32.3132997Z 
                      2019-08-29T09:57:32.3133031Z                                                                                 
                      2019-08-29T09:57:32.3133065Z Receiving objects:  35% (43/122)
                      2019-08-29T09:57:32.3133133Z 
                      2019-08-29T09:57:32.3133169Z                                                                                 
                      2019-08-29T09:57:32.3133209Z Receiving objects:  36% (44/122)
                      2019-08-29T09:57:32.3133231Z 
                      2019-08-29T09:57:32.3133265Z                                                                                 
                      2019-08-29T09:57:32.3133345Z Receiving objects:  37% (46/122)
                      2019-08-29T09:57:32.3133366Z 
                      2019-08-29T09:57:32.3133400Z                                                                                 
                      2019-08-29T09:57:32.3133432Z Receiving objects:  38% (47/122)
                      2019-08-29T09:57:32.3133508Z 
                      2019-08-29T09:57:32.3133544Z                                                                                 
                      2019-08-29T09:57:32.3133577Z Receiving objects:  39% (48/122)
                      2019-08-29T09:57:32.3133599Z 
                      2019-08-29T09:57:32.3133632Z                                                                                 
                      2019-08-29T09:57:32.3133713Z Receiving objects:  40% (49/122)
                      2019-08-29T09:57:32.3133735Z 
                      2019-08-29T09:57:32.3133769Z                                                                                 
                      2019-08-29T09:57:32.3133810Z Receiving objects:  41% (51/122)
                      2019-08-29T09:57:32.3133876Z 
                      2019-08-29T09:57:32.3133912Z                                                                                 
                      2019-08-29T09:57:32.3133945Z Receiving objects:  42% (52/122)
                      2019-08-29T09:57:32.3133967Z 
                      2019-08-29T09:57:32.3134001Z                                                                                 
                      2019-08-29T09:57:32.3134202Z Receiving objects:  43% (53/122)
                      2019-08-29T09:57:32.3134229Z 
                      2019-08-29T09:57:32.3134259Z                                                                                 
                      2019-08-29T09:57:32.3134287Z Receiving objects:  44% (54/122)
                      2019-08-29T09:57:32.3134348Z 
                      2019-08-29T09:57:32.3134379Z                                                                                 
                      2019-08-29T09:57:32.3134408Z Receiving objects:  45% (55/122)
                      2019-08-29T09:57:32.3134426Z 
                      2019-08-29T09:57:32.3134456Z                                                                                 
                      2019-08-29T09:57:32.3134530Z Receiving objects:  46% (57/122)
                      2019-08-29T09:57:32.3134555Z 
                      2019-08-29T09:57:32.3134586Z                                                                                 
                      2019-08-29T09:57:32.3134614Z Receiving objects:  47% (58/122)
                      2019-08-29T09:57:32.3134633Z 
                      2019-08-29T09:57:32.3134705Z                                                                                 
                      2019-08-29T09:57:32.3134734Z Receiving objects:  48% (59/122)
                      2019-08-29T09:57:32.3134813Z 
                      2019-08-29T09:57:32.3134844Z                                                                                 
                      2019-08-29T09:57:32.3134918Z Receiving objects:  49% (60/122)
                      2019-08-29T09:57:32.3134937Z 
                      2019-08-29T09:57:32.3134967Z                                                                                 
                      2019-08-29T09:57:32.3134996Z Receiving objects:  50% (61/122)
                      2019-08-29T09:57:32.3135014Z 
                      2019-08-29T09:57:32.3135086Z                                                                                 
                      2019-08-29T09:57:32.3135115Z Receiving objects:  51% (63/122)
                      2019-08-29T09:57:32.3135183Z 
                      2019-08-29T09:57:32.3135214Z                                                                                 
                      2019-08-29T09:57:32.3135289Z Receiving objects:  52% (64/122)
                      2019-08-29T09:57:32.3135307Z 
                      2019-08-29T09:57:32.3135337Z                                                                                 
                      2019-08-29T09:57:32.3135366Z Receiving objects:  53% (65/122)
                      2019-08-29T09:57:32.3135392Z 
                      2019-08-29T09:57:32.3135466Z                                                                                 
                      2019-08-29T09:57:32.3135496Z Receiving objects:  54% (66/122)
                      2019-08-29T09:57:32.3135515Z 
                      2019-08-29T09:57:32.3135545Z                                                                                 
                      2019-08-29T09:57:32.3135620Z Receiving objects:  55% (68/122)
                      2019-08-29T09:57:32.3135640Z 
                      2019-08-29T09:57:32.3135669Z                                                                                 
                      2019-08-29T09:57:32.3135698Z Receiving objects:  56% (69/122)
                      2019-08-29T09:57:32.3135723Z 
                      2019-08-29T09:57:32.3135794Z                                                                                 
                      2019-08-29T09:57:32.3135824Z Receiving objects:  57% (70/122)
                      2019-08-29T09:57:32.3135843Z 
                      2019-08-29T09:57:32.3135872Z                                                                                 
                      2019-08-29T09:57:32.3135946Z Receiving objects:  58% (71/122)
                      2019-08-29T09:57:32.3135965Z 
                      2019-08-29T09:57:32.3136002Z                                                                                 
                      2019-08-29T09:57:32.3136031Z Receiving objects:  59% (72/122)
                      2019-08-29T09:57:32.3136049Z 
                      2019-08-29T09:57:32.3136120Z                                                                                 
                      2019-08-29T09:57:32.3136150Z Receiving objects:  60% (74/122)
                      2019-08-29T09:57:32.3136168Z 
                      2019-08-29T09:57:32.3136198Z                                                                                 
                      2019-08-29T09:57:32.3136270Z Receiving objects:  61% (75/122)
                      2019-08-29T09:57:32.3136296Z 
                      2019-08-29T09:57:32.3136326Z                                                                                 
                      2019-08-29T09:57:32.3136355Z Receiving objects:  62% (76/122)
                      2019-08-29T09:57:32.3136373Z 
                      2019-08-29T09:57:32.3136443Z                                                                                 
                      2019-08-29T09:57:32.3136473Z Receiving objects:  63% (77/122)
                      2019-08-29T09:57:32.3136491Z 
                      2019-08-29T09:57:32.3136526Z                                                                                 
                      2019-08-29T09:57:32.3136594Z Receiving objects:  64% (79/122)
                      2019-08-29T09:57:32.3136614Z 
                      2019-08-29T09:57:32.3136644Z                                                                                 
                      2019-08-29T09:57:32.3136673Z Receiving objects:  65% (80/122)
                      2019-08-29T09:57:32.3136691Z 
                      2019-08-29T09:57:32.3136766Z                                                                                 
                      2019-08-29T09:57:32.3136795Z Receiving objects:  66% (81/122)
                      2019-08-29T09:57:32.3136814Z 
                      2019-08-29T09:57:32.3136850Z                                                                                 
                      2019-08-29T09:57:32.3136919Z Receiving objects:  67% (82/122)
                      2019-08-29T09:57:32.3136938Z 
                      2019-08-29T09:57:32.3136968Z                                                                                 
                      2019-08-29T09:57:32.3136996Z Receiving objects:  68% (83/122)
                      2019-08-29T09:57:32.3137015Z 
                      2019-08-29T09:57:32.3137084Z                                                                                 
                      2019-08-29T09:57:32.3137173Z Receiving objects:  69% (85/122)
                      2019-08-29T09:57:32.3137192Z 
                      2019-08-29T09:57:32.3137223Z                                                                                 
                      2019-08-29T09:57:32.3137294Z Receiving objects:  70% (86/122)
                      2019-08-29T09:57:32.3137314Z 
                      2019-08-29T09:57:32.3137344Z                                                                                 
                      2019-08-29T09:57:32.3137373Z Receiving objects:  71% (87/122)
                      2019-08-29T09:57:32.3138149Z 
                      2019-08-29T09:57:32.3138812Z                                                                                 
                      2019-08-29T09:57:32.3138871Z Receiving objects:  72% (88/122)
                      2019-08-29T09:57:32.3138895Z 
                      2019-08-29T09:57:32.3139006Z                                                                                 
                      2019-08-29T09:57:32.3139042Z Receiving objects:  73% (90/122)
                      2019-08-29T09:57:32.3139064Z 
                      2019-08-29T09:57:32.3139100Z                                                                                 
                      2019-08-29T09:57:32.3139198Z Receiving objects:  74% (91/122)
                      2019-08-29T09:57:32.3139221Z 
                      2019-08-29T09:57:32.3139256Z                                                                                 
                      2019-08-29T09:57:32.3139289Z Receiving objects:  75% (92/122)
                      2019-08-29T09:57:32.3139359Z 
                      2019-08-29T09:57:32.3139395Z                                                                                 
                      2019-08-29T09:57:32.3139428Z Receiving objects:  76% (93/122)
                      2019-08-29T09:57:32.3139450Z 
                      2019-08-29T09:57:32.3139484Z                                                                                 
                      2019-08-29T09:57:32.3139576Z Receiving objects:  77% (94/122)
                      2019-08-29T09:57:32.3139599Z 
                      2019-08-29T09:57:32.3139633Z                                                                                 
                      2019-08-29T09:57:32.3139667Z Receiving objects:  78% (96/122)
                      2019-08-29T09:57:32.3139736Z 
                      2019-08-29T09:57:32.3139772Z                                                                                 
                      2019-08-29T09:57:32.3139813Z Receiving objects:  79% (97/122)
                      2019-08-29T09:57:32.3139835Z 
                      2019-08-29T09:57:32.3139869Z                                                                                 
                      2019-08-29T09:57:32.3139952Z Receiving objects:  80% (98/122)
                      2019-08-29T09:57:32.3139975Z 
                      2019-08-29T09:57:32.3140010Z                                                                                 
                      2019-08-29T09:57:32.3140045Z Receiving objects:  81% (99/122)
                      2019-08-29T09:57:32.3140067Z 
                      2019-08-29T09:57:32.3140146Z                                                                                 
                      2019-08-29T09:57:32.3140187Z Receiving objects:  82% (101/122)
                      2019-08-29T09:57:32.3140211Z 
                      2019-08-29T09:57:32.3140245Z                                                                                 
                      2019-08-29T09:57:32.3140324Z Receiving objects:  83% (102/122)
                      2019-08-29T09:57:32.3140347Z 
                      2019-08-29T09:57:32.3140381Z                                                                                 
                      2019-08-29T09:57:32.3140422Z Receiving objects:  84% (103/122)
                      2019-08-29T09:57:32.3140445Z 
                      2019-08-29T09:57:32.3140526Z                                                                                 
                      2019-08-29T09:57:32.3140559Z Receiving objects:  85% (104/122)
                      2019-08-29T09:57:32.3140581Z 
                      2019-08-29T09:57:32.3140615Z                                                                                 
                      2019-08-29T09:57:32.3140695Z Receiving objects:  86% (105/122)
                      2019-08-29T09:57:32.3140718Z 
                      2019-08-29T09:57:32.3140752Z                                                                                 
                      2019-08-29T09:57:32.3140794Z Receiving objects:  87% (107/122)
                      2019-08-29T09:57:32.3140816Z 
                      2019-08-29T09:57:32.3140895Z                                                                                 
                      2019-08-29T09:57:32.3141150Z Receiving objects:  88% (108/122)
                      2019-08-29T09:57:32.3141179Z 
                      2019-08-29T09:57:32.3141214Z                                                                                 
                      2019-08-29T09:57:32.3142131Z Receiving objects:  89% (109/122)
                      2019-08-29T09:57:32.3142165Z 
                      2019-08-29T09:57:32.3142201Z                                                                                 
                      2019-08-29T09:57:32.3142235Z Receiving objects:  90% (110/122)
                      2019-08-29T09:57:32.3142257Z 
                      2019-08-29T09:57:32.3142338Z                                                                                 
                      2019-08-29T09:57:32.3142372Z Receiving objects:  91% (112/122)
                      2019-08-29T09:57:32.3142394Z 
                      2019-08-29T09:57:32.3142429Z                                                                                 
                      2019-08-29T09:57:32.3142618Z Receiving objects:  92% (113/122)
                      2019-08-29T09:57:32.3142640Z 
                      2019-08-29T09:57:32.3142675Z                                                                                 
                      2019-08-29T09:57:32.3142708Z Receiving objects:  93% (114/122)
                      2019-08-29T09:57:32.3142729Z 
                      2019-08-29T09:57:32.3142813Z                                                                                 
                      2019-08-29T09:57:32.3142856Z Receiving objects:  94% (115/122)
                      2019-08-29T09:57:32.3142877Z 
                      2019-08-29T09:57:32.3142912Z                                                                                 
                      2019-08-29T09:57:32.3142993Z Receiving objects:  95% (116/122)
                      2019-08-29T09:57:32.3143015Z 
                      2019-08-29T09:57:32.3143051Z                                                                                 
                      2019-08-29T09:57:32.3143085Z Receiving objects:  96% (118/122)
                      2019-08-29T09:57:32.3143107Z 
                      2019-08-29T09:57:32.3143188Z                                                                                 
                      2019-08-29T09:57:32.3143230Z Receiving objects:  97% (119/122)
                      2019-08-29T09:57:32.3143252Z 
                      2019-08-29T09:57:32.3143286Z                                                                                 
                      2019-08-29T09:57:32.3143364Z Receiving objects:  98% (120/122)
                      2019-08-29T09:57:32.3143388Z 
                      2019-08-29T09:57:32.3143423Z                                                                                 
                      2019-08-29T09:57:32.3143465Z Receiving objects:  99% (121/122)
                      2019-08-29T09:57:32.3143486Z 
                      2019-08-29T09:57:32.3143566Z                                                                                 
                      2019-08-29T09:57:32.3143600Z Receiving objects: 100% (122/122)
                      2019-08-29T09:57:32.3143621Z 
                      2019-08-29T09:57:32.3143655Z                                                                                 
                      2019-08-29T09:57:32.3143734Z Receiving objects: 100% (122/122), 26.76 KiB | 26.76 MiB/s, done.
                      2019-08-29T09:57:32.3143760Z 
                      2019-08-29T09:57:32.3143795Z                                                                                 
                      2019-08-29T09:57:32.3143836Z Resolving deltas:   0% (0/2)
                      2019-08-29T09:57:32.3143859Z 
                      2019-08-29T09:57:32.3143940Z                                                                                 
                      2019-08-29T09:57:32.3143974Z Resolving deltas: 100% (2/2)
                      2019-08-29T09:57:32.3143996Z 
                      2019-08-29T09:57:32.3144030Z                                                                                 
                      2019-08-29T09:57:32.3144245Z Resolving deltas: 100% (2/2), done.
                      2019-08-29T09:57:32.3580900Z From https://dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:32.3585582Z  * [new branch]      1234                    -> origin/1234
                      2019-08-29T09:57:32.3592005Z  * [new branch]      aaa                     -> origin/aaa
                      2019-08-29T09:57:32.3595762Z  * [new branch]      azaza                   -> origin/azaza
                      2019-08-29T09:57:32.3599703Z  * [new branch]      azaza1                  -> origin/azaza1
                      2019-08-29T09:57:32.3607982Z  * [new branch]      master                  -> origin/master
                      2019-08-29T09:57:32.3616283Z  * [new branch]      release-08.17           -> origin/release-08.17
                      2019-08-29T09:57:32.3616994Z  * [new branch]      release-08.19           -> origin/release-08.19
                      2019-08-29T09:57:32.3617645Z  * [new branch]      release-08.22           -> origin/release-08.22
                      2019-08-29T09:57:32.3619774Z  * [new branch]      release-08.2210         -> origin/release-08.2210
                      2019-08-29T09:57:32.3623614Z  * [new branch]      release-08.2211         -> origin/release-08.2211
                      2019-08-29T09:57:32.3624376Z  * [new branch]      release-08.221234561    -> origin/release-08.221234561
                      2019-08-29T09:57:32.3626738Z  * [new branch]      release-08.221234562    -> origin/release-08.221234562
                      2019-08-29T09:57:32.3627061Z  * [new branch]      release-08.221234563    -> origin/release-08.221234563
                      2019-08-29T09:57:32.3627678Z  * [new branch]      release-08.221234564    -> origin/release-08.221234564
                      2019-08-29T09:57:32.3628050Z  * [new branch]      release-08.221234565    -> origin/release-08.221234565
                      2019-08-29T09:57:32.3628535Z  * [new branch]      release-08.221234567    -> origin/release-08.221234567
                      2019-08-29T09:57:32.3628883Z  * [new branch]      release-08.2212345671   -> origin/release-08.2212345671
                      2019-08-29T09:57:32.3629127Z  * [new branch]      release-08.22123456712  -> origin/release-08.22123456712
                      2019-08-29T09:57:32.3629361Z  * [new branch]      release-08.2212S        -> origin/release-08.2212S
                      2019-08-29T09:57:32.3641809Z  * [new branch]      release-08.223          -> origin/release-08.223
                      2019-08-29T09:57:32.3644175Z  * [new branch]      release-08.224          -> origin/release-08.224
                      2019-08-29T09:57:32.3647890Z  * [new branch]      release-08.225          -> origin/release-08.225
                      2019-08-29T09:57:32.3805712Z  * [new branch]      release-08.226          -> origin/release-08.226
                      2019-08-29T09:57:32.3806167Z  * [new branch]      release-08.227          -> origin/release-08.227
                      2019-08-29T09:57:32.3806533Z  * [new branch]      release-08.228          -> origin/release-08.228
                      2019-08-29T09:57:32.3806870Z  * [new branch]      release-08.229          -> origin/release-08.229
                      2019-08-29T09:57:32.3807113Z  * [new branch]      release-08.22taukewk1a  -> origin/release-08.22taukewk1a
                      2019-08-29T09:57:32.3807356Z  * [new branch]      release-08.22taukewk1a3 -> origin/release-08.22taukewk1a3
                      2019-08-29T09:57:32.3807647Z  * [new branch]      release-08.22taukewka   -> origin/release-08.22taukewka
                      2019-08-29T09:57:32.3807907Z  * [new branch]      release-08.22test       -> origin/release-08.22test
                      2019-08-29T09:57:32.3808141Z  * [new branch]      release-08.22test1      -> origin/release-08.22test1
                      2019-08-29T09:57:32.3808376Z  * [new branch]      release-08.22test12     -> origin/release-08.22test12
                      2019-08-29T09:57:32.3808670Z  * [new branch]      release-08.22test122    -> origin/release-08.22test122
                      2019-08-29T09:57:32.3808908Z  * [new branch]      release-08.22test1223   -> origin/release-08.22test1223
                      2019-08-29T09:57:32.3809145Z  * [new branch]      release-08.22test12234  -> origin/release-08.22test12234
                      2019-08-29T09:57:32.3809386Z  * [new branch]      release-08.22yeaah      -> origin/release-08.22yeaah
                      2019-08-29T09:57:32.3809678Z  * [new branch]      release-08.22yeaah1     -> origin/release-08.22yeaah1
                      2019-08-29T09:57:32.3810027Z  * [new branch]      release-08.22yeaah1w    -> origin/release-08.22yeaah1w
                      2019-08-29T09:57:32.3810263Z  * [new branch]      release-08.23           -> origin/release-08.23
                      2019-08-29T09:57:32.3810560Z  * [new branch]      release-08.25           -> origin/release-08.25
                      2019-08-29T09:57:32.3811285Z  * [new branch]      release-08.26           -> origin/release-08.26
                      2019-08-29T09:57:32.3811608Z  * [new branch]      release-08.29           -> origin/release-08.29
                      2019-08-29T09:57:32.3811843Z  * [new branch]      test                    -> origin/test
                      2019-08-29T09:57:32.3812145Z  * [new branch]      test123                 -> origin/test123
                      2019-08-29T09:57:32.4840692Z ##[command]git checkout --progress --force b43bd6a1785759a7bae16a37a956f9389dcc73a4
                      2019-08-29T09:57:32.4843337Z Note: switching to ''b43bd6a1785759a7bae16a37a956f9389dcc73a4''.
                      2019-08-29T09:57:32.4843383Z 
                      2019-08-29T09:57:32.4843627Z You are in ''detached HEAD'' state. You can look around, make experimental
                      2019-08-29T09:57:32.4843684Z changes and commit them, and you can discard any commits you make in this
                      2019-08-29T09:57:32.4843722Z state without impacting any branches by switching back to a branch.
                      2019-08-29T09:57:32.4843997Z 
                      2019-08-29T09:57:32.4844035Z If you want to create a new branch to retain commits you create, you may
                      2019-08-29T09:57:32.4844427Z do so (now or later) by using -c with the switch command. Example:
                      2019-08-29T09:57:32.4844456Z 
                      2019-08-29T09:57:32.4844657Z   git switch -c <new-branch-name>
                      2019-08-29T09:57:32.4844807Z 
                      2019-08-29T09:57:32.4844840Z Or undo this operation with:
                      2019-08-29T09:57:32.4844870Z 
                      2019-08-29T09:57:32.4845049Z   git switch -
                      2019-08-29T09:57:32.4845074Z 
                      2019-08-29T09:57:32.4845109Z Turn off this advice by setting config variable advice.detachedHead to false
                      2019-08-29T09:57:32.4845229Z 
                      2019-08-29T09:57:32.4845472Z HEAD is now at b43bd6a Updated azure-pipelines.yml
                      2019-08-29T09:57:32.4913488Z ##[section]Finishing: Checkout', '2019-08-29T15:57:17.0000000+06:00', 404, N'Container'),
      (3, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:27.3044562Z ##[section]Starting: Initialize job
                      2019-08-29T09:57:27.3044795Z Current agent version: ''2.155.1''
                      2019-08-29T09:57:27.3220420Z Prepare build directory.
                      2019-08-29T09:57:27.3498879Z Set build variables.
                      2019-08-29T09:57:27.3546410Z Download all required tasks.
                      2019-08-29T09:57:27.3709101Z Downloading task: CmdLine
                      2019-08-29T09:57:27.9033181Z Downloading task: PowerShell
                      2019-08-29T09:57:28.8421829Z Start tracking orphan processes.
                      2019-08-29T09:57:28.8593407Z ##[section]Finishing: Initialize job', '2019-08-29T15:57:17.0000000+06:00', 10, N'Container'),
      (2, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:17.9296049Z ##[section]Starting: Prepare job Job
                      2019-08-29T09:57:17.9395121Z ContinueOnError: False
                      2019-08-29T09:57:17.9395121Z TimeoutInMinutes: 60
                      2019-08-29T09:57:17.9395121Z CancelTimeoutInMinutes: 5
                      2019-08-29T09:57:17.9395121Z Expand:
                      2019-08-29T09:57:17.9395121Z   ########## System Pipeline Decorator(s) ##########
      
                      2019-08-29T09:57:17.9395121Z   Begin evaluating template ''system-pre-steps.yml''
                      Evaluating: eq(''true'', variables[''system.debugContext''])
                      Expanded: eq(''true'', Null)
                      Result: False
                      Evaluating: resources[''repositories''][''self'']
                      Expanded: Object
                      Result: True
                      Evaluating: not(containsValue(job[''steps''][''*''][''task''][''id''], ''6d15af64-176c-496d-b583-fd2ae21d4df4''))
                      Expanded: not(containsValue(Object, ''6d15af64-176c-496d-b583-fd2ae21d4df4''))
                      Result: True
                      Evaluating: resources[''repositories''][''self''][''checkoutOptions'']
                      Result: Object
                      Finished evaluating template ''system-pre-steps.yml''
                      ********************************************************************************
                      Template and static variable resolution complete. Final runtime YAML document:
                      steps:
                      - task: 6d15af64-176c-496d-b583-fd2ae21d4df4@1
                          inputs:
                          repository: self
      
      
                      2019-08-29T09:57:17.9445129Z   MaxConcurrency: 0
                      2019-08-29T09:57:17.9495137Z ##[section]Finishing: Prepare job Job', '2019-08-29T15:57:17.0000000+06:00', 31, N'Container'),
      (1, 1, '2019-08-29T15:57:16.9870000+06:00', N'Begin evaluating template ''/azure-pipelines.yml''
                      Begin transform: variables
                      Evaluating: value
                      Result: Object
                      Evaluating: pair[''key'']
                      Result: ''Build.DropRoot''
                      Evaluating: pair[''value'']
                      Result: ''\\bies-pbi''
                      End transform: variables
                      Begin transform: trigger
                      Evaluating: value
                      Result: Object
                      End transform: trigger
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''script'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Run a one-line script''
                      Result: Object
                      Evaluating: value[''script'']
                      Result: ''echo Hello, world!''
                      Evaluating: value[''failOnStderr'']
                      Expanded: Null
                      Result: False
                      Evaluating: value[''workingDirectory'']
                      Expanded: Null
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''powershell'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Set Build Variables''
                      Result: Object
                      Evaluating: value[''powershell'']
                      Result: ''$dropRoot = ''$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID''
                      Write-Host ''dropRoot  is $dropRoot''
                      Write-Host ''##vso[task.setvariable variable=Build.DropRoot]$dropRoot''
                      ''
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''powershell'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''displayName'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''powershell'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Get Setted variables''
                      Result: Object
                      Evaluating: value[''powershell'']
                      Result: ''Write-Host ''Build.DropRoot = $env:BUILD_DROPROOT''
                      ''
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''powershell'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      Evaluating: in(pair[''key''], ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Expanded: in(''displayName'', ''errorActionPreference'', ''failOnStderr'', ''ignoreLASTEXITCODE'', ''workingDirectory'')
                      Result: False
                      End transform: step
                      Begin transform: step
                      Evaluating: transform(''stepToTaskBaseProperties'', value)
                      Evaluating: arg0
                      Result: Object
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''script'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: False
                      Evaluating: in(pair[''key''], ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Expanded: in(''displayName'', ''condition'', ''continueOnError'', ''displayName'', ''enabled'', ''env'', ''name'', ''timeoutInMinutes'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''displayName''
                      Evaluating: pair[''value'']
                      Result: ''Run a multi-line script''
                      Result: Object
                      Evaluating: value[''script'']
                      Result: ''echo Add other tasks to build, test, and deploy your project.
                      echo See https://aka.ms/yaml
                      ''
                      Evaluating: value[''failOnStderr'']
                      Expanded: Null
                      Result: False
                      Evaluating: value[''workingDirectory'']
                      Expanded: Null
                      Result: False
                      End transform: step
                      Begin transform: pipeline
                      Evaluating: value
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''variables'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''variables''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''trigger'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''trigger''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''pool'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: notIn(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: notIn(''steps'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: value
                      Result: Object
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''variables'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''trigger'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: False
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''pool'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''pool''
                      Evaluating: pair[''value'']
                      Result: Object
                      Evaluating: in(pair[''key''], ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Expanded: in(''steps'', ''strategy'', ''continueOnError'', ''pool'', ''container'', ''services'', ''workspace'', ''steps'')
                      Result: True
                      Evaluating: pair[''key'']
                      Result: ''steps''
                      Evaluating: pair[''value'']
                      Result: Object
                      End transform: pipeline
                      Finished evaluating template ''/azure-pipelines.yml''
                      ********************************************************************************
                      Template and static variable resolution complete. Final runtime YAML document:
                      variables:
                      - name: Build.DropRoot
                          value: ''\\bies-pbi''
                      trigger:
                          branches:
                          include:
                          - ''*''
                      stages:
                      - stage: __default
                          jobs:
                          - job: Job
                          pool:
                              vmImage: ubuntu-latest
                          steps:
                          - task: CmdLine@2
                              displayName: Run a one-line script
                              inputs:
                              script: echo Hello, world!
                          - task: PowerShell@2
                              displayName: Set Build Variables
                              inputs:
                              targetType: inline
                              script: >
                                  $dropRoot = ''$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID''
      
                                  Write-Host ''dropRoot  is $dropRoot''
      
                                  Write-Host ''##vso[task.setvariable variable=Build.DropRoot]$dropRoot''
                          - task: PowerShell@2
                              displayName: Get Setted variables
                              inputs:
                              targetType: inline
                              script: >
                                  Write-Host ''Build.DropRoot = $env:BUILD_DROPROOT''
                          - task: CmdLine@2
                              displayName: Run a multi-line script
                              inputs:
                              script: >
                                  echo Add other tasks to build, test, and deploy your project.
      
                                  echo See https://aka.ms/yaml', '2019-08-29T15:57:17.0000000+06:00', 211, N'Container'),
      (11, 1, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:27.0856966Z ##[section]Starting: Job
                      2019-08-29T09:57:27.3044596Z ##[section]Starting: Initialize job
                      2019-08-29T09:57:27.3044801Z Current agent version: ''2.155.1''
                      2019-08-29T09:57:27.3220451Z Prepare build directory.
                      2019-08-29T09:57:27.3498898Z Set build variables.
                      2019-08-29T09:57:27.3546434Z Download all required tasks.
                      2019-08-29T09:57:27.3709117Z Downloading task: CmdLine
                      2019-08-29T09:57:27.9033201Z Downloading task: PowerShell
                      2019-08-29T09:57:28.8421854Z Start tracking orphan processes.
                      2019-08-29T09:57:28.8593423Z ##[section]Finishing: Initialize job
                      2019-08-29T09:57:28.9058094Z ##[section]Starting: Checkout
                      2019-08-29T09:57:28.9317410Z ==============================================================================
                      2019-08-29T09:57:28.9317527Z Task         : Get sources
                      2019-08-29T09:57:28.9317567Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:28.9317627Z Version      : 1.0.0
                      2019-08-29T09:57:28.9317664Z Author       : Microsoft
                      2019-08-29T09:57:28.9317739Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:28.9317774Z ==============================================================================
                      2019-08-29T09:57:29.8225612Z Syncing repository: test (Git)
                      2019-08-29T09:57:30.3157978Z ##[command]git version
                      2019-08-29T09:57:30.5707292Z git version 2.23.0
                      2019-08-29T09:57:30.5875916Z ##[command]git lfs version
                      2019-08-29T09:57:31.3925749Z git-lfs/2.8.0 (GitHub; linux amd64; go 1.12.6)
                      2019-08-29T09:57:31.4277125Z ##[command]git init ''/home/vsts/work/1/s''
                      2019-08-29T09:57:31.4622887Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                      2019-08-29T09:57:31.4670652Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:31.4868251Z ##[command]git config gc.auto 0
                      2019-08-29T09:57:31.4941984Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                      2019-08-29T09:57:32.3121276Z ##[command]git config --get-all http.proxy
                      2019-08-29T09:57:32.3125454Z ##[command]git -c http.extraheader=''AUTHORIZATION: bearer ***'' fetch --force --tags --prune --progress --no-recurse-submodules origin
                      2019-08-29T09:57:32.3127496Z remote: Azure Repos        
                      2019-08-29T09:57:32.3127541Z remote: 
                      2019-08-29T09:57:32.3127578Z remote: Found 122 objects to send. (3 ms)        
                      2019-08-29T09:57:32.3127605Z 
                      2019-08-29T09:57:32.3127689Z                                                                                 
                      2019-08-29T09:57:32.3127727Z Receiving objects:   0% (1/122)
                      2019-08-29T09:57:32.3127767Z 
                      2019-08-29T09:57:32.3127804Z                                                                                 
                      2019-08-29T09:57:32.3127886Z Receiving objects:   1% (2/122)
                      2019-08-29T09:57:32.3127911Z 
                      2019-08-29T09:57:32.3127947Z                                                                                 
                      2019-08-29T09:57:32.3127981Z Receiving objects:   2% (3/122)
                      2019-08-29T09:57:32.3128003Z 
                      2019-08-29T09:57:32.3128085Z                                                                                 
                      2019-08-29T09:57:32.3128144Z Receiving objects:   3% (4/122)
                      2019-08-29T09:57:32.3128165Z 
                      2019-08-29T09:57:32.3128200Z                                                                                 
                      2019-08-29T09:57:32.3128234Z Receiving objects:   4% (5/122)
                      2019-08-29T09:57:32.3128410Z 
                      2019-08-29T09:57:32.3128445Z                                                                                 
                      2019-08-29T09:57:32.3128477Z Receiving objects:   5% (7/122)
                      2019-08-29T09:57:32.3128497Z 
                      2019-08-29T09:57:32.3128584Z                                                                                 
                      2019-08-29T09:57:32.3128618Z Receiving objects:   6% (8/122)
                      2019-08-29T09:57:32.3128638Z 
                      2019-08-29T09:57:32.3128671Z                                                                                 
                      2019-08-29T09:57:32.3128703Z Receiving objects:   7% (9/122)
                      2019-08-29T09:57:32.3128768Z 
                      2019-08-29T09:57:32.3128802Z                                                                                 
                      2019-08-29T09:57:32.3129165Z Receiving objects:   8% (10/122)
                      2019-08-29T09:57:32.3129187Z 
                      2019-08-29T09:57:32.3129286Z                                                                                 
                      2019-08-29T09:57:32.3129319Z Receiving objects:   9% (11/122)
                      2019-08-29T09:57:32.3129340Z 
                      2019-08-29T09:57:32.3129373Z                                                                                 
                      2019-08-29T09:57:32.3129451Z Receiving objects:  10% (13/122)
                      2019-08-29T09:57:32.3129473Z 
                      2019-08-29T09:57:32.3129597Z                                                                                 
                      2019-08-29T09:57:32.3129637Z Receiving objects:  11% (14/122)
                      2019-08-29T09:57:32.3129657Z 
                      2019-08-29T09:57:32.3129739Z                                                                                 
                      2019-08-29T09:57:32.3129772Z Receiving objects:  12% (15/122)
                      2019-08-29T09:57:32.3129793Z 
                      2019-08-29T09:57:32.3129827Z                                                                                 
                      2019-08-29T09:57:32.3129912Z Receiving objects:  13% (16/122)
                      2019-08-29T09:57:32.3129933Z 
                      2019-08-29T09:57:32.3129967Z                                                                                 
                      2019-08-29T09:57:32.3129998Z Receiving objects:  14% (18/122)
                      2019-08-29T09:57:32.3130018Z 
                      2019-08-29T09:57:32.3130099Z                                                                                 
                      2019-08-29T09:57:32.3130131Z Receiving objects:  15% (19/122)
                      2019-08-29T09:57:32.3130151Z 
                      2019-08-29T09:57:32.3130191Z                                                                                 
                      2019-08-29T09:57:32.3130387Z Receiving objects:  16% (20/122)
                      2019-08-29T09:57:32.3130411Z 
                      2019-08-29T09:57:32.3130443Z                                                                                 
                      2019-08-29T09:57:32.3130474Z Receiving objects:  17% (21/122)
                      2019-08-29T09:57:32.3130493Z 
                      2019-08-29T09:57:32.3130570Z                                                                                 
                      2019-08-29T09:57:32.3130608Z Receiving objects:  18% (22/122)
                      2019-08-29T09:57:32.3130629Z 
                      2019-08-29T09:57:32.3130661Z                                                                                 
                      2019-08-29T09:57:32.3130782Z Receiving objects:  19% (24/122)
                      2019-08-29T09:57:32.3130938Z 
                      2019-08-29T09:57:32.3130973Z                                                                                 
                      2019-08-29T09:57:32.3131045Z Receiving objects:  20% (25/122)
                      2019-08-29T09:57:32.3131066Z 
                      2019-08-29T09:57:32.3131158Z                                                                                 
                      2019-08-29T09:57:32.3131192Z Receiving objects:  21% (26/122)
                      2019-08-29T09:57:32.3131214Z 
                      2019-08-29T09:57:32.3131248Z                                                                                 
                      2019-08-29T09:57:32.3131327Z Receiving objects:  22% (27/122)
                      2019-08-29T09:57:32.3131349Z 
                      2019-08-29T09:57:32.3131385Z                                                                                 
                      2019-08-29T09:57:32.3131426Z Receiving objects:  23% (29/122)
                      2019-08-29T09:57:32.3131447Z 
                      2019-08-29T09:57:32.3131527Z                                                                                 
                      2019-08-29T09:57:32.3131563Z Receiving objects:  24% (30/122)
                      2019-08-29T09:57:32.3131584Z 
                      2019-08-29T09:57:32.3131618Z                                                                                 
                      2019-08-29T09:57:32.3131697Z Receiving objects:  25% (31/122)
                      2019-08-29T09:57:32.3131719Z 
                      2019-08-29T09:57:32.3131762Z                                                                                 
                      2019-08-29T09:57:32.3131795Z Receiving objects:  26% (32/122)
                      2019-08-29T09:57:32.3131816Z 
                      2019-08-29T09:57:32.3131896Z                                                                                 
                      2019-08-29T09:57:32.3131931Z Receiving objects:  27% (33/122)
                      2019-08-29T09:57:32.3131952Z 
                      2019-08-29T09:57:32.3131986Z                                                                                 
                      2019-08-29T09:57:32.3132159Z Receiving objects:  28% (35/122)
                      2019-08-29T09:57:32.3132184Z 
                      2019-08-29T09:57:32.3132218Z                                                                                 
                      2019-08-29T09:57:32.3132251Z Receiving objects:  29% (36/122)
                      2019-08-29T09:57:32.3132272Z 
                      2019-08-29T09:57:32.3132353Z                                                                                 
                      2019-08-29T09:57:32.3132396Z Receiving objects:  30% (37/122)
                      2019-08-29T09:57:32.3132418Z 
                      2019-08-29T09:57:32.3132561Z                                                                                 
                      2019-08-29T09:57:32.3132603Z Receiving objects:  31% (38/122)
                      2019-08-29T09:57:32.3132624Z 
                      2019-08-29T09:57:32.3132659Z                                                                                 
                      2019-08-29T09:57:32.3132693Z Receiving objects:  32% (40/122)
                      2019-08-29T09:57:32.3132762Z 
                      2019-08-29T09:57:32.3132799Z                                                                                 
                      2019-08-29T09:57:32.3132832Z Receiving objects:  33% (41/122)
                      2019-08-29T09:57:32.3132861Z 
                      2019-08-29T09:57:32.3132944Z                                                                                 
                      2019-08-29T09:57:32.3132979Z Receiving objects:  34% (42/122)
                      2019-08-29T09:57:32.3133000Z 
                      2019-08-29T09:57:32.3133035Z                                                                                 
                      2019-08-29T09:57:32.3133068Z Receiving objects:  35% (43/122)
                      2019-08-29T09:57:32.3133136Z 
                      2019-08-29T09:57:32.3133180Z                                                                                 
                      2019-08-29T09:57:32.3133212Z Receiving objects:  36% (44/122)
                      2019-08-29T09:57:32.3133234Z 
                      2019-08-29T09:57:32.3133269Z                                                                                 
                      2019-08-29T09:57:32.3133349Z Receiving objects:  37% (46/122)
                      2019-08-29T09:57:32.3133369Z 
                      2019-08-29T09:57:32.3133404Z                                                                                 
                      2019-08-29T09:57:32.3133436Z Receiving objects:  38% (47/122)
                      2019-08-29T09:57:32.3133512Z 
                      2019-08-29T09:57:32.3133548Z                                                                                 
                      2019-08-29T09:57:32.3133581Z Receiving objects:  39% (48/122)
                      2019-08-29T09:57:32.3133602Z 
                      2019-08-29T09:57:32.3133636Z                                                                                 
                      2019-08-29T09:57:32.3133717Z Receiving objects:  40% (49/122)
                      2019-08-29T09:57:32.3133738Z 
                      2019-08-29T09:57:32.3133779Z                                                                                 
                      2019-08-29T09:57:32.3133813Z Receiving objects:  41% (51/122)
                      2019-08-29T09:57:32.3133880Z 
                      2019-08-29T09:57:32.3133916Z                                                                                 
                      2019-08-29T09:57:32.3133948Z Receiving objects:  42% (52/122)
                      2019-08-29T09:57:32.3133970Z 
                      2019-08-29T09:57:32.3134005Z                                                                                 
                      2019-08-29T09:57:32.3134206Z Receiving objects:  43% (53/122)
                      2019-08-29T09:57:32.3134232Z 
                      2019-08-29T09:57:32.3134262Z                                                                                 
                      2019-08-29T09:57:32.3134290Z Receiving objects:  44% (54/122)
                      2019-08-29T09:57:32.3134352Z 
                      2019-08-29T09:57:32.3134382Z                                                                                 
                      2019-08-29T09:57:32.3134411Z Receiving objects:  45% (55/122)
                      2019-08-29T09:57:32.3134429Z 
                      2019-08-29T09:57:32.3134459Z                                                                                 
                      2019-08-29T09:57:32.3134539Z Receiving objects:  46% (57/122)
                      2019-08-29T09:57:32.3134558Z 
                      2019-08-29T09:57:32.3134589Z                                                                                 
                      2019-08-29T09:57:32.3134617Z Receiving objects:  47% (58/122)
                      2019-08-29T09:57:32.3134676Z 
                      2019-08-29T09:57:32.3134708Z                                                                                 
                      2019-08-29T09:57:32.3134737Z Receiving objects:  48% (59/122)
                      2019-08-29T09:57:32.3134817Z 
                      2019-08-29T09:57:32.3134847Z                                                                                 
                      2019-08-29T09:57:32.3134921Z Receiving objects:  49% (60/122)
                      2019-08-29T09:57:32.3134940Z 
                      2019-08-29T09:57:32.3134970Z                                                                                 
                      2019-08-29T09:57:32.3134999Z Receiving objects:  50% (61/122)
                      2019-08-29T09:57:32.3135017Z 
                      2019-08-29T09:57:32.3135090Z                                                                                 
                      2019-08-29T09:57:32.3135164Z Receiving objects:  51% (63/122)
                      2019-08-29T09:57:32.3135187Z 
                      2019-08-29T09:57:32.3135218Z                                                                                 
                      2019-08-29T09:57:32.3135292Z Receiving objects:  52% (64/122)
                      2019-08-29T09:57:32.3135310Z 
                      2019-08-29T09:57:32.3135341Z                                                                                 
                      2019-08-29T09:57:32.3135370Z Receiving objects:  53% (65/122)
                      2019-08-29T09:57:32.3135395Z 
                      2019-08-29T09:57:32.3135470Z                                                                                 
                      2019-08-29T09:57:32.3135499Z Receiving objects:  54% (66/122)
                      2019-08-29T09:57:32.3135518Z 
                      2019-08-29T09:57:32.3135549Z                                                                                 
                      2019-08-29T09:57:32.3135624Z Receiving objects:  55% (68/122)
                      2019-08-29T09:57:32.3135643Z 
                      2019-08-29T09:57:32.3135673Z                                                                                 
                      2019-08-29T09:57:32.3135708Z Receiving objects:  56% (69/122)
                      2019-08-29T09:57:32.3135726Z 
                      2019-08-29T09:57:32.3135798Z                                                                                 
                      2019-08-29T09:57:32.3135827Z Receiving objects:  57% (70/122)
                      2019-08-29T09:57:32.3135845Z 
                      2019-08-29T09:57:32.3135876Z                                                                                 
                      2019-08-29T09:57:32.3135949Z Receiving objects:  58% (71/122)
                      2019-08-29T09:57:32.3135968Z 
                      2019-08-29T09:57:32.3136005Z                                                                                 
                      2019-08-29T09:57:32.3136034Z Receiving objects:  59% (72/122)
                      2019-08-29T09:57:32.3136052Z 
                      2019-08-29T09:57:32.3136124Z                                                                                 
                      2019-08-29T09:57:32.3136153Z Receiving objects:  60% (74/122)
                      2019-08-29T09:57:32.3136171Z 
                      2019-08-29T09:57:32.3136202Z                                                                                 
                      2019-08-29T09:57:32.3136279Z Receiving objects:  61% (75/122)
                      2019-08-29T09:57:32.3136299Z 
                      2019-08-29T09:57:32.3136329Z                                                                                 
                      2019-08-29T09:57:32.3136358Z Receiving objects:  62% (76/122)
                      2019-08-29T09:57:32.3136376Z 
                      2019-08-29T09:57:32.3136446Z                                                                                 
                      2019-08-29T09:57:32.3136476Z Receiving objects:  63% (77/122)
                      2019-08-29T09:57:32.3136494Z 
                      2019-08-29T09:57:32.3136529Z                                                                                 
                      2019-08-29T09:57:32.3136597Z Receiving objects:  64% (79/122)
                      2019-08-29T09:57:32.3136617Z 
                      2019-08-29T09:57:32.3136647Z                                                                                 
                      2019-08-29T09:57:32.3136676Z Receiving objects:  65% (80/122)
                      2019-08-29T09:57:32.3136694Z 
                      2019-08-29T09:57:32.3136769Z                                                                                 
                      2019-08-29T09:57:32.3136798Z Receiving objects:  66% (81/122)
                      2019-08-29T09:57:32.3136823Z 
                      2019-08-29T09:57:32.3136853Z                                                                                 
                      2019-08-29T09:57:32.3136922Z Receiving objects:  67% (82/122)
                      2019-08-29T09:57:32.3136941Z 
                      2019-08-29T09:57:32.3136971Z                                                                                 
                      2019-08-29T09:57:32.3137000Z Receiving objects:  68% (83/122)
                      2019-08-29T09:57:32.3137018Z 
                      2019-08-29T09:57:32.3137088Z                                                                                 
                      2019-08-29T09:57:32.3137176Z Receiving objects:  69% (85/122)
                      2019-08-29T09:57:32.3137195Z 
                      2019-08-29T09:57:32.3137226Z                                                                                 
                      2019-08-29T09:57:32.3137298Z Receiving objects:  70% (86/122)
                      2019-08-29T09:57:32.3137317Z 
                      2019-08-29T09:57:32.3137347Z                                                                                 
                      2019-08-29T09:57:32.3137911Z Receiving objects:  71% (87/122)
                      2019-08-29T09:57:32.3138332Z 
                      2019-08-29T09:57:32.3138823Z                                                                                 
                      2019-08-29T09:57:32.3138876Z Receiving objects:  72% (88/122)
                      2019-08-29T09:57:32.3138899Z 
                      2019-08-29T09:57:32.3139010Z                                                                                 
                      2019-08-29T09:57:32.3139046Z Receiving objects:  73% (90/122)
                      2019-08-29T09:57:32.3139068Z 
                      2019-08-29T09:57:32.3139104Z                                                                                 
                      2019-08-29T09:57:32.3139203Z Receiving objects:  74% (91/122)
                      2019-08-29T09:57:32.3139225Z 
                      2019-08-29T09:57:32.3139259Z                                                                                 
                      2019-08-29T09:57:32.3139293Z Receiving objects:  75% (92/122)
                      2019-08-29T09:57:32.3139363Z 
                      2019-08-29T09:57:32.3139399Z                                                                                 
                      2019-08-29T09:57:32.3139432Z Receiving objects:  76% (93/122)
                      2019-08-29T09:57:32.3139453Z 
                      2019-08-29T09:57:32.3139497Z                                                                                 
                      2019-08-29T09:57:32.3139580Z Receiving objects:  77% (94/122)
                      2019-08-29T09:57:32.3139602Z 
                      2019-08-29T09:57:32.3139637Z                                                                                 
                      2019-08-29T09:57:32.3139670Z Receiving objects:  78% (96/122)
                      2019-08-29T09:57:32.3139739Z 
                      2019-08-29T09:57:32.3139775Z                                                                                 
                      2019-08-29T09:57:32.3139817Z Receiving objects:  79% (97/122)
                      2019-08-29T09:57:32.3139838Z 
                      2019-08-29T09:57:32.3139873Z                                                                                 
                      2019-08-29T09:57:32.3139956Z Receiving objects:  80% (98/122)
                      2019-08-29T09:57:32.3139979Z 
                      2019-08-29T09:57:32.3140014Z                                                                                 
                      2019-08-29T09:57:32.3140049Z Receiving objects:  81% (99/122)
                      2019-08-29T09:57:32.3140113Z 
                      2019-08-29T09:57:32.3140157Z                                                                                 
                      2019-08-29T09:57:32.3140192Z Receiving objects:  82% (101/122)
                      2019-08-29T09:57:32.3140215Z 
                      2019-08-29T09:57:32.3140249Z                                                                                 
                      2019-08-29T09:57:32.3140328Z Receiving objects:  83% (102/122)
                      2019-08-29T09:57:32.3140351Z 
                      2019-08-29T09:57:32.3140385Z                                                                                 
                      2019-08-29T09:57:32.3140426Z Receiving objects:  84% (103/122)
                      2019-08-29T09:57:32.3140448Z 
                      2019-08-29T09:57:32.3140530Z                                                                                 
                      2019-08-29T09:57:32.3140563Z Receiving objects:  85% (104/122)
                      2019-08-29T09:57:32.3140585Z 
                      2019-08-29T09:57:32.3140619Z                                                                                 
                      2019-08-29T09:57:32.3140699Z Receiving objects:  86% (105/122)
                      2019-08-29T09:57:32.3140721Z 
                      2019-08-29T09:57:32.3140764Z                                                                                 
                      2019-08-29T09:57:32.3140798Z Receiving objects:  87% (107/122)
                      2019-08-29T09:57:32.3140820Z 
                      2019-08-29T09:57:32.3140899Z                                                                                 
                      2019-08-29T09:57:32.3141157Z Receiving objects:  88% (108/122)
                      2019-08-29T09:57:32.3141183Z 
                      2019-08-29T09:57:32.3141218Z                                                                                 
                      2019-08-29T09:57:32.3142143Z Receiving objects:  89% (109/122)
                      2019-08-29T09:57:32.3142169Z 
                      2019-08-29T09:57:32.3142205Z                                                                                 
                      2019-08-29T09:57:32.3142239Z Receiving objects:  90% (110/122)
                      2019-08-29T09:57:32.3142260Z 
                      2019-08-29T09:57:32.3142342Z                                                                                 
                      2019-08-29T09:57:32.3142376Z Receiving objects:  91% (112/122)
                      2019-08-29T09:57:32.3142398Z 
                      2019-08-29T09:57:32.3142532Z                                                                                 
                      2019-08-29T09:57:32.3142622Z Receiving objects:  92% (113/122)
                      2019-08-29T09:57:32.3142643Z 
                      2019-08-29T09:57:32.3142678Z                                                                                 
                      2019-08-29T09:57:32.3142712Z Receiving objects:  93% (114/122)
                      2019-08-29T09:57:32.3142733Z 
                      2019-08-29T09:57:32.3142818Z                                                                                 
                      2019-08-29T09:57:32.3142860Z Receiving objects:  94% (115/122)
                      2019-08-29T09:57:32.3142881Z 
                      2019-08-29T09:57:32.3142916Z                                                                                 
                      2019-08-29T09:57:32.3142996Z Receiving objects:  95% (116/122)
                      2019-08-29T09:57:32.3143019Z 
                      2019-08-29T09:57:32.3143055Z                                                                                 
                      2019-08-29T09:57:32.3143089Z Receiving objects:  96% (118/122)
                      2019-08-29T09:57:32.3143110Z 
                      2019-08-29T09:57:32.3143199Z                                                                                 
                      2019-08-29T09:57:32.3143234Z Receiving objects:  97% (119/122)
                      2019-08-29T09:57:32.3143255Z 
                      2019-08-29T09:57:32.3143290Z                                                                                 
                      2019-08-29T09:57:32.3143368Z Receiving objects:  98% (120/122)
                      2019-08-29T09:57:32.3143392Z 
                      2019-08-29T09:57:32.3143427Z                                                                                 
                      2019-08-29T09:57:32.3143469Z Receiving objects:  99% (121/122)
                      2019-08-29T09:57:32.3143490Z 
                      2019-08-29T09:57:32.3143570Z                                                                                 
                      2019-08-29T09:57:32.3143604Z Receiving objects: 100% (122/122)
                      2019-08-29T09:57:32.3143625Z 
                      2019-08-29T09:57:32.3143659Z                                                                                 
                      2019-08-29T09:57:32.3143739Z Receiving objects: 100% (122/122), 26.76 KiB | 26.76 MiB/s, done.
                      2019-08-29T09:57:32.3143763Z 
                      2019-08-29T09:57:32.3143806Z                                                                                 
                      2019-08-29T09:57:32.3143841Z Resolving deltas:   0% (0/2)
                      2019-08-29T09:57:32.3143863Z 
                      2019-08-29T09:57:32.3143944Z                                                                                 
                      2019-08-29T09:57:32.3143979Z Resolving deltas: 100% (2/2)
                      2019-08-29T09:57:32.3144000Z 
                      2019-08-29T09:57:32.3144034Z                                                                                 
                      2019-08-29T09:57:32.3144250Z Resolving deltas: 100% (2/2), done.
                      2019-08-29T09:57:32.3580933Z From https://dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:32.3585713Z  * [new branch]      1234                    -> origin/1234
                      2019-08-29T09:57:32.3592025Z  * [new branch]      aaa                     -> origin/aaa
                      2019-08-29T09:57:32.3595780Z  * [new branch]      azaza                   -> origin/azaza
                      2019-08-29T09:57:32.3599720Z  * [new branch]      azaza1                  -> origin/azaza1
                      2019-08-29T09:57:32.3608018Z  * [new branch]      master                  -> origin/master
                      2019-08-29T09:57:32.3616374Z  * [new branch]      release-08.17           -> origin/release-08.17
                      2019-08-29T09:57:32.3617006Z  * [new branch]      release-08.19           -> origin/release-08.19
                      2019-08-29T09:57:32.3617657Z  * [new branch]      release-08.22           -> origin/release-08.22
                      2019-08-29T09:57:32.3619792Z  * [new branch]      release-08.2210         -> origin/release-08.2210
                      2019-08-29T09:57:32.3623642Z  * [new branch]      release-08.2211         -> origin/release-08.2211
                      2019-08-29T09:57:32.3624469Z  * [new branch]      release-08.221234561    -> origin/release-08.221234561
                      2019-08-29T09:57:32.3626756Z  * [new branch]      release-08.221234562    -> origin/release-08.221234562
                      2019-08-29T09:57:32.3627068Z  * [new branch]      release-08.221234563    -> origin/release-08.221234563
                      2019-08-29T09:57:32.3627698Z  * [new branch]      release-08.221234564    -> origin/release-08.221234564
                      2019-08-29T09:57:32.3628205Z  * [new branch]      release-08.221234565    -> origin/release-08.221234565
                      2019-08-29T09:57:32.3628542Z  * [new branch]      release-08.221234567    -> origin/release-08.221234567
                      2019-08-29T09:57:32.3628891Z  * [new branch]      release-08.2212345671   -> origin/release-08.2212345671
                      2019-08-29T09:57:32.3629133Z  * [new branch]      release-08.22123456712  -> origin/release-08.22123456712
                      2019-08-29T09:57:32.3629367Z  * [new branch]      release-08.2212S        -> origin/release-08.2212S
                      2019-08-29T09:57:32.3641831Z  * [new branch]      release-08.223          -> origin/release-08.223
                      2019-08-29T09:57:32.3644195Z  * [new branch]      release-08.224          -> origin/release-08.224
                      2019-08-29T09:57:32.3647908Z  * [new branch]      release-08.225          -> origin/release-08.225
                      2019-08-29T09:57:32.3805741Z  * [new branch]      release-08.226          -> origin/release-08.226
                      2019-08-29T09:57:32.3806175Z  * [new branch]      release-08.227          -> origin/release-08.227
                      2019-08-29T09:57:32.3806559Z  * [new branch]      release-08.228          -> origin/release-08.228
                      2019-08-29T09:57:32.3806876Z  * [new branch]      release-08.229          -> origin/release-08.229
                      2019-08-29T09:57:32.3807119Z  * [new branch]      release-08.22taukewk1a  -> origin/release-08.22taukewk1a
                      2019-08-29T09:57:32.3807362Z  * [new branch]      release-08.22taukewk1a3 -> origin/release-08.22taukewk1a3
                      2019-08-29T09:57:32.3807654Z  * [new branch]      release-08.22taukewka   -> origin/release-08.22taukewka
                      2019-08-29T09:57:32.3807914Z  * [new branch]      release-08.22test       -> origin/release-08.22test
                      2019-08-29T09:57:32.3808147Z  * [new branch]      release-08.22test1      -> origin/release-08.22test1
                      2019-08-29T09:57:32.3808382Z  * [new branch]      release-08.22test12     -> origin/release-08.22test12
                      2019-08-29T09:57:32.3808676Z  * [new branch]      release-08.22test122    -> origin/release-08.22test122
                      2019-08-29T09:57:32.3808913Z  * [new branch]      release-08.22test1223   -> origin/release-08.22test1223
                      2019-08-29T09:57:32.3809157Z  * [new branch]      release-08.22test12234  -> origin/release-08.22test12234
                      2019-08-29T09:57:32.3809391Z  * [new branch]      release-08.22yeaah      -> origin/release-08.22yeaah
                      2019-08-29T09:57:32.3809684Z  * [new branch]      release-08.22yeaah1     -> origin/release-08.22yeaah1
                      2019-08-29T09:57:32.3810033Z  * [new branch]      release-08.22yeaah1w    -> origin/release-08.22yeaah1w
                      2019-08-29T09:57:32.3810269Z  * [new branch]      release-08.23           -> origin/release-08.23
                      2019-08-29T09:57:32.3810566Z  * [new branch]      release-08.25           -> origin/release-08.25
                      2019-08-29T09:57:32.3811298Z  * [new branch]      release-08.26           -> origin/release-08.26
                      2019-08-29T09:57:32.3811614Z  * [new branch]      release-08.29           -> origin/release-08.29
                      2019-08-29T09:57:32.3811850Z  * [new branch]      test                    -> origin/test
                      2019-08-29T09:57:32.3812152Z  * [new branch]      test123                 -> origin/test123
                      2019-08-29T09:57:32.4841318Z ##[command]git checkout --progress --force b43bd6a1785759a7bae16a37a956f9389dcc73a4
                      2019-08-29T09:57:32.4843349Z Note: switching to ''b43bd6a1785759a7bae16a37a956f9389dcc73a4''.
                      2019-08-29T09:57:32.4843388Z 
                      2019-08-29T09:57:32.4843635Z You are in ''detached HEAD'' state. You can look around, make experimental
                      2019-08-29T09:57:32.4843689Z changes and commit them, and you can discard any commits you make in this
                      2019-08-29T09:57:32.4843727Z state without impacting any branches by switching back to a branch.
                      2019-08-29T09:57:32.4844002Z 
                      2019-08-29T09:57:32.4844039Z If you want to create a new branch to retain commits you create, you may
                      2019-08-29T09:57:32.4844434Z do so (now or later) by using -c with the switch command. Example:
                      2019-08-29T09:57:32.4844459Z 
                      2019-08-29T09:57:32.4844663Z   git switch -c <new-branch-name>
                      2019-08-29T09:57:32.4844811Z 
                      2019-08-29T09:57:32.4844845Z Or undo this operation with:
                      2019-08-29T09:57:32.4844874Z 
                      2019-08-29T09:57:32.4845054Z   git switch -
                      2019-08-29T09:57:32.4845077Z 
                      2019-08-29T09:57:32.4845206Z Turn off this advice by setting config variable advice.detachedHead to false
                      2019-08-29T09:57:32.4845232Z 
                      2019-08-29T09:57:32.4845479Z HEAD is now at b43bd6a Updated azure-pipelines.yml
                      2019-08-29T09:57:32.4913504Z ##[section]Finishing: Checkout
                      2019-08-29T09:57:32.4928864Z ##[section]Starting: Run a one-line script
                      2019-08-29T09:57:32.4931687Z ==============================================================================
                      2019-08-29T09:57:32.4931813Z Task         : Command line
                      2019-08-29T09:57:32.4931879Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:32.4931914Z Version      : 2.151.2
                      2019-08-29T09:57:32.4931947Z Author       : Microsoft Corporation
                      2019-08-29T09:57:32.4931993Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:32.4932027Z ==============================================================================
                      2019-08-29T09:57:34.5362740Z Generating script.
                      2019-08-29T09:57:34.5382600Z Script contents:
                      2019-08-29T09:57:34.5383077Z echo Hello, world!
                      2019-08-29T09:57:34.5383414Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.5438046Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/9ae89893-742b-4f8e-8bbd-670f3b93b1b1.sh
                      2019-08-29T09:57:34.5625762Z Hello, world!
                      2019-08-29T09:57:34.5807322Z ##[section]Finishing: Run a one-line script
                      2019-08-29T09:57:34.5813663Z ##[section]Starting: Set Build Variables
                      2019-08-29T09:57:34.5816691Z ==============================================================================
                      2019-08-29T09:57:34.5816784Z Task         : PowerShell
                      2019-08-29T09:57:34.5816818Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:34.5816851Z Version      : 2.151.2
                      2019-08-29T09:57:34.5816927Z Author       : Microsoft Corporation
                      2019-08-29T09:57:34.5816961Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:34.5816993Z ==============================================================================
                      2019-08-29T09:57:34.7197069Z Generating script.
                      2019-08-29T09:57:34.7227991Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.7261463Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1''
                      2019-08-29T09:57:40.0409398Z dropRoot  is \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.1789198Z ##[section]Finishing: Set Build Variables
                      2019-08-29T09:57:40.1795392Z ##[section]Starting: Get Setted variables
                      2019-08-29T09:57:40.1798696Z ==============================================================================
                      2019-08-29T09:57:40.1798745Z Task         : PowerShell
                      2019-08-29T09:57:40.1798781Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:40.1798816Z Version      : 2.151.2
                      2019-08-29T09:57:40.1798898Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.1798933Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:40.1798967Z ==============================================================================
                      2019-08-29T09:57:40.3135378Z Generating script.
                      2019-08-29T09:57:40.3159326Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:40.3190603Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1''
                      2019-08-29T09:57:40.8535909Z Build.DropRoot = \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.9035404Z ##[section]Finishing: Get Setted variables
                      2019-08-29T09:57:40.9042260Z ##[section]Starting: Run a multi-line script
                      2019-08-29T09:57:40.9044915Z ==============================================================================
                      2019-08-29T09:57:40.9045015Z Task         : Command line
                      2019-08-29T09:57:40.9045051Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:40.9045085Z Version      : 2.151.2
                      2019-08-29T09:57:40.9045166Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.9045201Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:40.9045235Z ==============================================================================
                      2019-08-29T09:57:41.0349633Z Generating script.
                      2019-08-29T09:57:41.0373030Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:41.0403492Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/f9d6fee3-f45b-4b03-9588-5b245e1cf62d.sh
                      2019-08-29T09:57:41.0487550Z Add other tasks to build, test, and deploy your project.
                      2019-08-29T09:57:41.0487892Z See https://aka.ms/yaml
                      2019-08-29T09:57:41.0560683Z ##[section]Finishing: Run a multi-line script
                      2019-08-29T09:57:41.0570319Z ##[section]Starting: Checkout
                      2019-08-29T09:57:41.0571910Z ==============================================================================
                      2019-08-29T09:57:41.0571998Z Task         : Get sources
                      2019-08-29T09:57:41.0572032Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:41.0572064Z Version      : 1.0.0
                      2019-08-29T09:57:41.0572135Z Author       : Microsoft
                      2019-08-29T09:57:41.0572168Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:41.0572199Z ==============================================================================
                      2019-08-29T09:57:41.4718241Z Cleaning any cached credential from repository: test (Git)
                      2019-08-29T09:57:41.4759355Z ##[section]Finishing: Checkout
                      2019-08-29T09:57:41.4828469Z ##[section]Starting: Finalize Job
                      2019-08-29T09:57:41.4871869Z Start cleaning up orphan processes.
                      2019-08-29T09:57:41.4965538Z ##[section]Finishing: Finalize Job
                      2019-08-29T09:57:41.5020909Z ##[section]Finishing: Job', '2019-08-29T15:57:17.0000000+06:00', 483, N'Container'),
      (23, 2, '2019-08-29T15:57:16.9870000+06:00', N'2019-08-29T09:57:27.0856966Z ##[section]Starting: Job
                      2019-08-29T09:57:27.3044596Z ##[section]Starting: Initialize job
                      2019-08-29T09:57:27.3044801Z Current agent version: ''2.155.1''
                      2019-08-29T09:57:27.3220451Z Prepare build directory.
                      2019-08-29T09:57:27.3498898Z Set build variables.
                      2019-08-29T09:57:27.3546434Z Download all required tasks.
                      2019-08-29T09:57:27.3709117Z Downloading task: CmdLine
                      2019-08-29T09:57:27.9033201Z Downloading task: PowerShell
                      2019-08-29T09:57:28.8421854Z Start tracking orphan processes.
                      2019-08-29T09:57:28.8593423Z ##[section]Finishing: Initialize job
                      2019-08-29T09:57:28.9058094Z ##[section]Starting: Checkout
                      2019-08-29T09:57:28.9317410Z ==============================================================================
                      2019-08-29T09:57:28.9317527Z Task         : Get sources
                      2019-08-29T09:57:28.9317567Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:28.9317627Z Version      : 1.0.0
                      2019-08-29T09:57:28.9317664Z Author       : Microsoft
                      2019-08-29T09:57:28.9317739Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:28.9317774Z ==============================================================================
                      2019-08-29T09:57:29.8225612Z Syncing repository: test (Git)
                      2019-08-29T09:57:30.3157978Z ##[command]git version
                      2019-08-29T09:57:30.5707292Z git version 2.23.0
                      2019-08-29T09:57:30.5875916Z ##[command]git lfs version
                      2019-08-29T09:57:31.3925749Z git-lfs/2.8.0 (GitHub; linux amd64; go 1.12.6)
                      2019-08-29T09:57:31.4277125Z ##[command]git init ''/home/vsts/work/1/s''
                      2019-08-29T09:57:31.4622887Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                      2019-08-29T09:57:31.4670652Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:31.4868251Z ##[command]git config gc.auto 0
                      2019-08-29T09:57:31.4941984Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                      2019-08-29T09:57:32.3121276Z ##[command]git config --get-all http.proxy
                      2019-08-29T09:57:32.3125454Z ##[command]git -c http.extraheader=''AUTHORIZATION: bearer ***'' fetch --force --tags --prune --progress --no-recurse-submodules origin
                      2019-08-29T09:57:32.3127496Z remote: Azure Repos        
                      2019-08-29T09:57:32.3127541Z remote: 
                      2019-08-29T09:57:32.3127578Z remote: Found 122 objects to send. (3 ms)        
                      2019-08-29T09:57:32.3127605Z 
                      2019-08-29T09:57:32.3127689Z                                                                                 
                      2019-08-29T09:57:32.3127727Z Receiving objects:   0% (1/122)
                      2019-08-29T09:57:32.3127767Z 
                      2019-08-29T09:57:32.3127804Z                                                                                 
                      2019-08-29T09:57:32.3127886Z Receiving objects:   1% (2/122)
                      2019-08-29T09:57:32.3127911Z 
                      2019-08-29T09:57:32.3127947Z                                                                                 
                      2019-08-29T09:57:32.3127981Z Receiving objects:   2% (3/122)
                      2019-08-29T09:57:32.3128003Z 
                      2019-08-29T09:57:32.3128085Z                                                                                 
                      2019-08-29T09:57:32.3128144Z Receiving objects:   3% (4/122)
                      2019-08-29T09:57:32.3128165Z 
                      2019-08-29T09:57:32.3128200Z                                                                                 
                      2019-08-29T09:57:32.3128234Z Receiving objects:   4% (5/122)
                      2019-08-29T09:57:32.3128410Z 
                      2019-08-29T09:57:32.3128445Z                                                                                 
                      2019-08-29T09:57:32.3128477Z Receiving objects:   5% (7/122)
                      2019-08-29T09:57:32.3128497Z 
                      2019-08-29T09:57:32.3128584Z                                                                                 
                      2019-08-29T09:57:32.3128618Z Receiving objects:   6% (8/122)
                      2019-08-29T09:57:32.3128638Z 
                      2019-08-29T09:57:32.3128671Z                                                                                 
                      2019-08-29T09:57:32.3128703Z Receiving objects:   7% (9/122)
                      2019-08-29T09:57:32.3128768Z 
                      2019-08-29T09:57:32.3128802Z                                                                                 
                      2019-08-29T09:57:32.3129165Z Receiving objects:   8% (10/122)
                      2019-08-29T09:57:32.3129187Z 
                      2019-08-29T09:57:32.3129286Z                                                                                 
                      2019-08-29T09:57:32.3129319Z Receiving objects:   9% (11/122)
                      2019-08-29T09:57:32.3129340Z 
                      2019-08-29T09:57:32.3129373Z                                                                                 
                      2019-08-29T09:57:32.3129451Z Receiving objects:  10% (13/122)
                      2019-08-29T09:57:32.3129473Z 
                      2019-08-29T09:57:32.3129597Z                                                                                 
                      2019-08-29T09:57:32.3129637Z Receiving objects:  11% (14/122)
                      2019-08-29T09:57:32.3129657Z 
                      2019-08-29T09:57:32.3129739Z                                                                                 
                      2019-08-29T09:57:32.3129772Z Receiving objects:  12% (15/122)
                      2019-08-29T09:57:32.3129793Z 
                      2019-08-29T09:57:32.3129827Z                                                                                 
                      2019-08-29T09:57:32.3129912Z Receiving objects:  13% (16/122)
                      2019-08-29T09:57:32.3129933Z 
                      2019-08-29T09:57:32.3129967Z                                                                                 
                      2019-08-29T09:57:32.3129998Z Receiving objects:  14% (18/122)
                      2019-08-29T09:57:32.3130018Z 
                      2019-08-29T09:57:32.3130099Z                                                                                 
                      2019-08-29T09:57:32.3130131Z Receiving objects:  15% (19/122)
                      2019-08-29T09:57:32.3130151Z 
                      2019-08-29T09:57:32.3130191Z                                                                                 
                      2019-08-29T09:57:32.3130387Z Receiving objects:  16% (20/122)
                      2019-08-29T09:57:32.3130411Z 
                      2019-08-29T09:57:32.3130443Z                                                                                 
                      2019-08-29T09:57:32.3130474Z Receiving objects:  17% (21/122)
                      2019-08-29T09:57:32.3130493Z 
                      2019-08-29T09:57:32.3130570Z                                                                                 
                      2019-08-29T09:57:32.3130608Z Receiving objects:  18% (22/122)
                      2019-08-29T09:57:32.3130629Z 
                      2019-08-29T09:57:32.3130661Z                                                                                 
                      2019-08-29T09:57:32.3130782Z Receiving objects:  19% (24/122)
                      2019-08-29T09:57:32.3130938Z 
                      2019-08-29T09:57:32.3130973Z                                                                                 
                      2019-08-29T09:57:32.3131045Z Receiving objects:  20% (25/122)
                      2019-08-29T09:57:32.3131066Z 
                      2019-08-29T09:57:32.3131158Z                                                                                 
                      2019-08-29T09:57:32.3131192Z Receiving objects:  21% (26/122)
                      2019-08-29T09:57:32.3131214Z 
                      2019-08-29T09:57:32.3131248Z                                                                                 
                      2019-08-29T09:57:32.3131327Z Receiving objects:  22% (27/122)
                      2019-08-29T09:57:32.3131349Z 
                      2019-08-29T09:57:32.3131385Z                                                                                 
                      2019-08-29T09:57:32.3131426Z Receiving objects:  23% (29/122)
                      2019-08-29T09:57:32.3131447Z 
                      2019-08-29T09:57:32.3131527Z                                                                                 
                      2019-08-29T09:57:32.3131563Z Receiving objects:  24% (30/122)
                      2019-08-29T09:57:32.3131584Z 
                      2019-08-29T09:57:32.3131618Z                                                                                 
                      2019-08-29T09:57:32.3131697Z Receiving objects:  25% (31/122)
                      2019-08-29T09:57:32.3131719Z 
                      2019-08-29T09:57:32.3131762Z                                                                                 
                      2019-08-29T09:57:32.3131795Z Receiving objects:  26% (32/122)
                      2019-08-29T09:57:32.3131816Z 
                      2019-08-29T09:57:32.3131896Z                                                                                 
                      2019-08-29T09:57:32.3131931Z Receiving objects:  27% (33/122)
                      2019-08-29T09:57:32.3131952Z 
                      2019-08-29T09:57:32.3131986Z                                                                                 
                      2019-08-29T09:57:32.3132159Z Receiving objects:  28% (35/122)
                      2019-08-29T09:57:32.3132184Z 
                      2019-08-29T09:57:32.3132218Z                                                                                 
                      2019-08-29T09:57:32.3132251Z Receiving objects:  29% (36/122)
                      2019-08-29T09:57:32.3132272Z 
                      2019-08-29T09:57:32.3132353Z                                                                                 
                      2019-08-29T09:57:32.3132396Z Receiving objects:  30% (37/122)
                      2019-08-29T09:57:32.3132418Z 
                      2019-08-29T09:57:32.3132561Z                                                                                 
                      2019-08-29T09:57:32.3132603Z Receiving objects:  31% (38/122)
                      2019-08-29T09:57:32.3132624Z 
                      2019-08-29T09:57:32.3132659Z                                                                                 
                      2019-08-29T09:57:32.3132693Z Receiving objects:  32% (40/122)
                      2019-08-29T09:57:32.3132762Z 
                      2019-08-29T09:57:32.3132799Z                                                                                 
                      2019-08-29T09:57:32.3132832Z Receiving objects:  33% (41/122)
                      2019-08-29T09:57:32.3132861Z 
                      2019-08-29T09:57:32.3132944Z                                                                                 
                      2019-08-29T09:57:32.3132979Z Receiving objects:  34% (42/122)
                      2019-08-29T09:57:32.3133000Z 
                      2019-08-29T09:57:32.3133035Z                                                                                 
                      2019-08-29T09:57:32.3133068Z Receiving objects:  35% (43/122)
                      2019-08-29T09:57:32.3133136Z 
                      2019-08-29T09:57:32.3133180Z                                                                                 
                      2019-08-29T09:57:32.3133212Z Receiving objects:  36% (44/122)
                      2019-08-29T09:57:32.3133234Z 
                      2019-08-29T09:57:32.3133269Z                                                                                 
                      2019-08-29T09:57:32.3133349Z Receiving objects:  37% (46/122)
                      2019-08-29T09:57:32.3133369Z 
                      2019-08-29T09:57:32.3133404Z                                                                                 
                      2019-08-29T09:57:32.3133436Z Receiving objects:  38% (47/122)
                      2019-08-29T09:57:32.3133512Z 
                      2019-08-29T09:57:32.3133548Z                                                                                 
                      2019-08-29T09:57:32.3133581Z Receiving objects:  39% (48/122)
                      2019-08-29T09:57:32.3133602Z 
                      2019-08-29T09:57:32.3133636Z                                                                                 
                      2019-08-29T09:57:32.3133717Z Receiving objects:  40% (49/122)
                      2019-08-29T09:57:32.3133738Z 
                      2019-08-29T09:57:32.3133779Z                                                                                 
                      2019-08-29T09:57:32.3133813Z Receiving objects:  41% (51/122)
                      2019-08-29T09:57:32.3133880Z 
                      2019-08-29T09:57:32.3133916Z                                                                                 
                      2019-08-29T09:57:32.3133948Z Receiving objects:  42% (52/122)
                      2019-08-29T09:57:32.3133970Z 
                      2019-08-29T09:57:32.3134005Z                                                                                 
                      2019-08-29T09:57:32.3134206Z Receiving objects:  43% (53/122)
                      2019-08-29T09:57:32.3134232Z 
                      2019-08-29T09:57:32.3134262Z                                                                                 
                      2019-08-29T09:57:32.3134290Z Receiving objects:  44% (54/122)
                      2019-08-29T09:57:32.3134352Z 
                      2019-08-29T09:57:32.3134382Z                                                                                 
                      2019-08-29T09:57:32.3134411Z Receiving objects:  45% (55/122)
                      2019-08-29T09:57:32.3134429Z 
                      2019-08-29T09:57:32.3134459Z                                                                                 
                      2019-08-29T09:57:32.3134539Z Receiving objects:  46% (57/122)
                      2019-08-29T09:57:32.3134558Z 
                      2019-08-29T09:57:32.3134589Z                                                                                 
                      2019-08-29T09:57:32.3134617Z Receiving objects:  47% (58/122)
                      2019-08-29T09:57:32.3134676Z 
                      2019-08-29T09:57:32.3134708Z                                                                                 
                      2019-08-29T09:57:32.3134737Z Receiving objects:  48% (59/122)
                      2019-08-29T09:57:32.3134817Z 
                      2019-08-29T09:57:32.3134847Z                                                                                 
                      2019-08-29T09:57:32.3134921Z Receiving objects:  49% (60/122)
                      2019-08-29T09:57:32.3134940Z 
                      2019-08-29T09:57:32.3134970Z                                                                                 
                      2019-08-29T09:57:32.3134999Z Receiving objects:  50% (61/122)
                      2019-08-29T09:57:32.3135017Z 
                      2019-08-29T09:57:32.3135090Z                                                                                 
                      2019-08-29T09:57:32.3135164Z Receiving objects:  51% (63/122)
                      2019-08-29T09:57:32.3135187Z 
                      2019-08-29T09:57:32.3135218Z                                                                                 
                      2019-08-29T09:57:32.3135292Z Receiving objects:  52% (64/122)
                      2019-08-29T09:57:32.3135310Z 
                      2019-08-29T09:57:32.3135341Z                                                                                 
                      2019-08-29T09:57:32.3135370Z Receiving objects:  53% (65/122)
                      2019-08-29T09:57:32.3135395Z 
                      2019-08-29T09:57:32.3135470Z                                                                                 
                      2019-08-29T09:57:32.3135499Z Receiving objects:  54% (66/122)
                      2019-08-29T09:57:32.3135518Z 
                      2019-08-29T09:57:32.3135549Z                                                                                 
                      2019-08-29T09:57:32.3135624Z Receiving objects:  55% (68/122)
                      2019-08-29T09:57:32.3135643Z 
                      2019-08-29T09:57:32.3135673Z                                                                                 
                      2019-08-29T09:57:32.3135708Z Receiving objects:  56% (69/122)
                      2019-08-29T09:57:32.3135726Z 
                      2019-08-29T09:57:32.3135798Z                                                                                 
                      2019-08-29T09:57:32.3135827Z Receiving objects:  57% (70/122)
                      2019-08-29T09:57:32.3135845Z 
                      2019-08-29T09:57:32.3135876Z                                                                                 
                      2019-08-29T09:57:32.3135949Z Receiving objects:  58% (71/122)
                      2019-08-29T09:57:32.3135968Z 
                      2019-08-29T09:57:32.3136005Z                                                                                 
                      2019-08-29T09:57:32.3136034Z Receiving objects:  59% (72/122)
                      2019-08-29T09:57:32.3136052Z 
                      2019-08-29T09:57:32.3136124Z                                                                                 
                      2019-08-29T09:57:32.3136153Z Receiving objects:  60% (74/122)
                      2019-08-29T09:57:32.3136171Z 
                      2019-08-29T09:57:32.3136202Z                                                                                 
                      2019-08-29T09:57:32.3136279Z Receiving objects:  61% (75/122)
                      2019-08-29T09:57:32.3136299Z 
                      2019-08-29T09:57:32.3136329Z                                                                                 
                      2019-08-29T09:57:32.3136358Z Receiving objects:  62% (76/122)
                      2019-08-29T09:57:32.3136376Z 
                      2019-08-29T09:57:32.3136446Z                                                                                 
                      2019-08-29T09:57:32.3136476Z Receiving objects:  63% (77/122)
                      2019-08-29T09:57:32.3136494Z 
                      2019-08-29T09:57:32.3136529Z                                                                                 
                      2019-08-29T09:57:32.3136597Z Receiving objects:  64% (79/122)
                      2019-08-29T09:57:32.3136617Z 
                      2019-08-29T09:57:32.3136647Z                                                                                 
                      2019-08-29T09:57:32.3136676Z Receiving objects:  65% (80/122)
                      2019-08-29T09:57:32.3136694Z 
                      2019-08-29T09:57:32.3136769Z                                                                                 
                      2019-08-29T09:57:32.3136798Z Receiving objects:  66% (81/122)
                      2019-08-29T09:57:32.3136823Z 
                      2019-08-29T09:57:32.3136853Z                                                                                 
                      2019-08-29T09:57:32.3136922Z Receiving objects:  67% (82/122)
                      2019-08-29T09:57:32.3136941Z 
                      2019-08-29T09:57:32.3136971Z                                                                                 
                      2019-08-29T09:57:32.3137000Z Receiving objects:  68% (83/122)
                      2019-08-29T09:57:32.3137018Z 
                      2019-08-29T09:57:32.3137088Z                                                                                 
                      2019-08-29T09:57:32.3137176Z Receiving objects:  69% (85/122)
                      2019-08-29T09:57:32.3137195Z 
                      2019-08-29T09:57:32.3137226Z                                                                                 
                      2019-08-29T09:57:32.3137298Z Receiving objects:  70% (86/122)
                      2019-08-29T09:57:32.3137317Z 
                      2019-08-29T09:57:32.3137347Z                                                                                 
                      2019-08-29T09:57:32.3137911Z Receiving objects:  71% (87/122)
                      2019-08-29T09:57:32.3138332Z 
                      2019-08-29T09:57:32.3138823Z                                                                                 
                      2019-08-29T09:57:32.3138876Z Receiving objects:  72% (88/122)
                      2019-08-29T09:57:32.3138899Z 
                      2019-08-29T09:57:32.3139010Z                                                                                 
                      2019-08-29T09:57:32.3139046Z Receiving objects:  73% (90/122)
                      2019-08-29T09:57:32.3139068Z 
                      2019-08-29T09:57:32.3139104Z                                                                                 
                      2019-08-29T09:57:32.3139203Z Receiving objects:  74% (91/122)
                      2019-08-29T09:57:32.3139225Z 
                      2019-08-29T09:57:32.3139259Z                                                                                 
                      2019-08-29T09:57:32.3139293Z Receiving objects:  75% (92/122)
                      2019-08-29T09:57:32.3139363Z 
                      2019-08-29T09:57:32.3139399Z                                                                                 
                      2019-08-29T09:57:32.3139432Z Receiving objects:  76% (93/122)
                      2019-08-29T09:57:32.3139453Z 
                      2019-08-29T09:57:32.3139497Z                                                                                 
                      2019-08-29T09:57:32.3139580Z Receiving objects:  77% (94/122)
                      2019-08-29T09:57:32.3139602Z 
                      2019-08-29T09:57:32.3139637Z                                                                                 
                      2019-08-29T09:57:32.3139670Z Receiving objects:  78% (96/122)
                      2019-08-29T09:57:32.3139739Z 
                      2019-08-29T09:57:32.3139775Z                                                                                 
                      2019-08-29T09:57:32.3139817Z Receiving objects:  79% (97/122)
                      2019-08-29T09:57:32.3139838Z 
                      2019-08-29T09:57:32.3139873Z                                                                                 
                      2019-08-29T09:57:32.3139956Z Receiving objects:  80% (98/122)
                      2019-08-29T09:57:32.3139979Z 
                      2019-08-29T09:57:32.3140014Z                                                                                 
                      2019-08-29T09:57:32.3140049Z Receiving objects:  81% (99/122)
                      2019-08-29T09:57:32.3140113Z 
                      2019-08-29T09:57:32.3140157Z                                                                                 
                      2019-08-29T09:57:32.3140192Z Receiving objects:  82% (101/122)
                      2019-08-29T09:57:32.3140215Z 
                      2019-08-29T09:57:32.3140249Z                                                                                 
                      2019-08-29T09:57:32.3140328Z Receiving objects:  83% (102/122)
                      2019-08-29T09:57:32.3140351Z 
                      2019-08-29T09:57:32.3140385Z                                                                                 
                      2019-08-29T09:57:32.3140426Z Receiving objects:  84% (103/122)
                      2019-08-29T09:57:32.3140448Z 
                      2019-08-29T09:57:32.3140530Z                                                                                 
                      2019-08-29T09:57:32.3140563Z Receiving objects:  85% (104/122)
                      2019-08-29T09:57:32.3140585Z 
                      2019-08-29T09:57:32.3140619Z                                                                                 
                      2019-08-29T09:57:32.3140699Z Receiving objects:  86% (105/122)
                      2019-08-29T09:57:32.3140721Z 
                      2019-08-29T09:57:32.3140764Z                                                                                 
                      2019-08-29T09:57:32.3140798Z Receiving objects:  87% (107/122)
                      2019-08-29T09:57:32.3140820Z 
                      2019-08-29T09:57:32.3140899Z                                                                                 
                      2019-08-29T09:57:32.3141157Z Receiving objects:  88% (108/122)
                      2019-08-29T09:57:32.3141183Z 
                      2019-08-29T09:57:32.3141218Z                                                                                 
                      2019-08-29T09:57:32.3142143Z Receiving objects:  89% (109/122)
                      2019-08-29T09:57:32.3142169Z 
                      2019-08-29T09:57:32.3142205Z                                                                                 
                      2019-08-29T09:57:32.3142239Z Receiving objects:  90% (110/122)
                      2019-08-29T09:57:32.3142260Z 
                      2019-08-29T09:57:32.3142342Z                                                                                 
                      2019-08-29T09:57:32.3142376Z Receiving objects:  91% (112/122)
                      2019-08-29T09:57:32.3142398Z 
                      2019-08-29T09:57:32.3142532Z                                                                                 
                      2019-08-29T09:57:32.3142622Z Receiving objects:  92% (113/122)
                      2019-08-29T09:57:32.3142643Z 
                      2019-08-29T09:57:32.3142678Z                                                                                 
                      2019-08-29T09:57:32.3142712Z Receiving objects:  93% (114/122)
                      2019-08-29T09:57:32.3142733Z 
                      2019-08-29T09:57:32.3142818Z                                                                                 
                      2019-08-29T09:57:32.3142860Z Receiving objects:  94% (115/122)
                      2019-08-29T09:57:32.3142881Z 
                      2019-08-29T09:57:32.3142916Z                                                                                 
                      2019-08-29T09:57:32.3142996Z Receiving objects:  95% (116/122)
                      2019-08-29T09:57:32.3143019Z 
                      2019-08-29T09:57:32.3143055Z                                                                                 
                      2019-08-29T09:57:32.3143089Z Receiving objects:  96% (118/122)
                      2019-08-29T09:57:32.3143110Z 
                      2019-08-29T09:57:32.3143199Z                                                                                 
                      2019-08-29T09:57:32.3143234Z Receiving objects:  97% (119/122)
                      2019-08-29T09:57:32.3143255Z 
                      2019-08-29T09:57:32.3143290Z                                                                                 
                      2019-08-29T09:57:32.3143368Z Receiving objects:  98% (120/122)
                      2019-08-29T09:57:32.3143392Z 
                      2019-08-29T09:57:32.3143427Z                                                                                 
                      2019-08-29T09:57:32.3143469Z Receiving objects:  99% (121/122)
                      2019-08-29T09:57:32.3143490Z 
                      2019-08-29T09:57:32.3143570Z                                                                                 
                      2019-08-29T09:57:32.3143604Z Receiving objects: 100% (122/122)
                      2019-08-29T09:57:32.3143625Z 
                      2019-08-29T09:57:32.3143659Z                                                                                 
                      2019-08-29T09:57:32.3143739Z Receiving objects: 100% (122/122), 26.76 KiB | 26.76 MiB/s, done.
                      2019-08-29T09:57:32.3143763Z 
                      2019-08-29T09:57:32.3143806Z                                                                                 
                      2019-08-29T09:57:32.3143841Z Resolving deltas:   0% (0/2)
                      2019-08-29T09:57:32.3143863Z 
                      2019-08-29T09:57:32.3143944Z                                                                                 
                      2019-08-29T09:57:32.3143979Z Resolving deltas: 100% (2/2)
                      2019-08-29T09:57:32.3144000Z 
                      2019-08-29T09:57:32.3144034Z                                                                                 
                      2019-08-29T09:57:32.3144250Z Resolving deltas: 100% (2/2), done.
                      2019-08-29T09:57:32.3580933Z From https://dev.azure.com/tauke1/test/_git/test
                      2019-08-29T09:57:32.3585713Z  * [new branch]      1234                    -> origin/1234
                      2019-08-29T09:57:32.3592025Z  * [new branch]      aaa                     -> origin/aaa
                      2019-08-29T09:57:32.3595780Z  * [new branch]      azaza                   -> origin/azaza
                      2019-08-29T09:57:32.3599720Z  * [new branch]      azaza1                  -> origin/azaza1
                      2019-08-29T09:57:32.3608018Z  * [new branch]      master                  -> origin/master
                      2019-08-29T09:57:32.3616374Z  * [new branch]      release-08.17           -> origin/release-08.17
                      2019-08-29T09:57:32.3617006Z  * [new branch]      release-08.19           -> origin/release-08.19
                      2019-08-29T09:57:32.3617657Z  * [new branch]      release-08.22           -> origin/release-08.22
                      2019-08-29T09:57:32.3619792Z  * [new branch]      release-08.2210         -> origin/release-08.2210
                      2019-08-29T09:57:32.3623642Z  * [new branch]      release-08.2211         -> origin/release-08.2211
                      2019-08-29T09:57:32.3624469Z  * [new branch]      release-08.221234561    -> origin/release-08.221234561
                      2019-08-29T09:57:32.3626756Z  * [new branch]      release-08.221234562    -> origin/release-08.221234562
                      2019-08-29T09:57:32.3627068Z  * [new branch]      release-08.221234563    -> origin/release-08.221234563
                      2019-08-29T09:57:32.3627698Z  * [new branch]      release-08.221234564    -> origin/release-08.221234564
                      2019-08-29T09:57:32.3628205Z  * [new branch]      release-08.221234565    -> origin/release-08.221234565
                      2019-08-29T09:57:32.3628542Z  * [new branch]      release-08.221234567    -> origin/release-08.221234567
                      2019-08-29T09:57:32.3628891Z  * [new branch]      release-08.2212345671   -> origin/release-08.2212345671
                      2019-08-29T09:57:32.3629133Z  * [new branch]      release-08.22123456712  -> origin/release-08.22123456712
                      2019-08-29T09:57:32.3629367Z  * [new branch]      release-08.2212S        -> origin/release-08.2212S
                      2019-08-29T09:57:32.3641831Z  * [new branch]      release-08.223          -> origin/release-08.223
                      2019-08-29T09:57:32.3644195Z  * [new branch]      release-08.224          -> origin/release-08.224
                      2019-08-29T09:57:32.3647908Z  * [new branch]      release-08.225          -> origin/release-08.225
                      2019-08-29T09:57:32.3805741Z  * [new branch]      release-08.226          -> origin/release-08.226
                      2019-08-29T09:57:32.3806175Z  * [new branch]      release-08.227          -> origin/release-08.227
                      2019-08-29T09:57:32.3806559Z  * [new branch]      release-08.228          -> origin/release-08.228
                      2019-08-29T09:57:32.3806876Z  * [new branch]      release-08.229          -> origin/release-08.229
                      2019-08-29T09:57:32.3807119Z  * [new branch]      release-08.22taukewk1a  -> origin/release-08.22taukewk1a
                      2019-08-29T09:57:32.3807362Z  * [new branch]      release-08.22taukewk1a3 -> origin/release-08.22taukewk1a3
                      2019-08-29T09:57:32.3807654Z  * [new branch]      release-08.22taukewka   -> origin/release-08.22taukewka
                      2019-08-29T09:57:32.3807914Z  * [new branch]      release-08.22test       -> origin/release-08.22test
                      2019-08-29T09:57:32.3808147Z  * [new branch]      release-08.22test1      -> origin/release-08.22test1
                      2019-08-29T09:57:32.3808382Z  * [new branch]      release-08.22test12     -> origin/release-08.22test12
                      2019-08-29T09:57:32.3808676Z  * [new branch]      release-08.22test122    -> origin/release-08.22test122
                      2019-08-29T09:57:32.3808913Z  * [new branch]      release-08.22test1223   -> origin/release-08.22test1223
                      2019-08-29T09:57:32.3809157Z  * [new branch]      release-08.22test12234  -> origin/release-08.22test12234
                      2019-08-29T09:57:32.3809391Z  * [new branch]      release-08.22yeaah      -> origin/release-08.22yeaah
                      2019-08-29T09:57:32.3809684Z  * [new branch]      release-08.22yeaah1     -> origin/release-08.22yeaah1
                      2019-08-29T09:57:32.3810033Z  * [new branch]      release-08.22yeaah1w    -> origin/release-08.22yeaah1w
                      2019-08-29T09:57:32.3810269Z  * [new branch]      release-08.23           -> origin/release-08.23
                      2019-08-29T09:57:32.3810566Z  * [new branch]      release-08.25           -> origin/release-08.25
                      2019-08-29T09:57:32.3811298Z  * [new branch]      release-08.26           -> origin/release-08.26
                      2019-08-29T09:57:32.3811614Z  * [new branch]      release-08.29           -> origin/release-08.29
                      2019-08-29T09:57:32.3811850Z  * [new branch]      test                    -> origin/test
                      2019-08-29T09:57:32.3812152Z  * [new branch]      test123                 -> origin/test123
                      2019-08-29T09:57:32.4841318Z ##[command]git checkout --progress --force b43bd6a1785759a7bae16a37a956f9389dcc73a4
                      2019-08-29T09:57:32.4843349Z Note: switching to ''b43bd6a1785759a7bae16a37a956f9389dcc73a4''.
                      2019-08-29T09:57:32.4843388Z 
                      2019-08-29T09:57:32.4843635Z You are in ''detached HEAD'' state. You can look around, make experimental
                      2019-08-29T09:57:32.4843689Z changes and commit them, and you can discard any commits you make in this
                      2019-08-29T09:57:32.4843727Z state without impacting any branches by switching back to a branch.
                      2019-08-29T09:57:32.4844002Z 
                      2019-08-29T09:57:32.4844039Z If you want to create a new branch to retain commits you create, you may
                      2019-08-29T09:57:32.4844434Z do so (now or later) by using -c with the switch command. Example:
                      2019-08-29T09:57:32.4844459Z 
                      2019-08-29T09:57:32.4844663Z   git switch -c <new-branch-name>
                      2019-08-29T09:57:32.4844811Z 
                      2019-08-29T09:57:32.4844845Z Or undo this operation with:
                      2019-08-29T09:57:32.4844874Z 
                      2019-08-29T09:57:32.4845054Z   git switch -
                      2019-08-29T09:57:32.4845077Z 
                      2019-08-29T09:57:32.4845206Z Turn off this advice by setting config variable advice.detachedHead to false
                      2019-08-29T09:57:32.4845232Z 
                      2019-08-29T09:57:32.4845479Z HEAD is now at b43bd6a Updated azure-pipelines.yml
                      2019-08-29T09:57:32.4913504Z ##[section]Finishing: Checkout
                      2019-08-29T09:57:32.4928864Z ##[section]Starting: Run a one-line script
                      2019-08-29T09:57:32.4931687Z ==============================================================================
                      2019-08-29T09:57:32.4931813Z Task         : Command line
                      2019-08-29T09:57:32.4931879Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:32.4931914Z Version      : 2.151.2
                      2019-08-29T09:57:32.4931947Z Author       : Microsoft Corporation
                      2019-08-29T09:57:32.4931993Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:32.4932027Z ==============================================================================
                      2019-08-29T09:57:34.5362740Z Generating script.
                      2019-08-29T09:57:34.5382600Z Script contents:
                      2019-08-29T09:57:34.5383077Z echo Hello, world!
                      2019-08-29T09:57:34.5383414Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.5438046Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/9ae89893-742b-4f8e-8bbd-670f3b93b1b1.sh
                      2019-08-29T09:57:34.5625762Z Hello, world!
                      2019-08-29T09:57:34.5807322Z ##[section]Finishing: Run a one-line script
                      2019-08-29T09:57:34.5813663Z ##[section]Starting: Set Build Variables
                      2019-08-29T09:57:34.5816691Z ==============================================================================
                      2019-08-29T09:57:34.5816784Z Task         : PowerShell
                      2019-08-29T09:57:34.5816818Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:34.5816851Z Version      : 2.151.2
                      2019-08-29T09:57:34.5816927Z Author       : Microsoft Corporation
                      2019-08-29T09:57:34.5816961Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:34.5816993Z ==============================================================================
                      2019-08-29T09:57:34.7197069Z Generating script.
                      2019-08-29T09:57:34.7227991Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:34.7261463Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1''
                      2019-08-29T09:57:40.0409398Z dropRoot  is \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.1789198Z ##[section]Finishing: Set Build Variables
                      2019-08-29T09:57:40.1795392Z ##[section]Starting: Get Setted variables
                      2019-08-29T09:57:40.1798696Z ==============================================================================
                      2019-08-29T09:57:40.1798745Z Task         : PowerShell
                      2019-08-29T09:57:40.1798781Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                      2019-08-29T09:57:40.1798816Z Version      : 2.151.2
                      2019-08-29T09:57:40.1798898Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.1798933Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                      2019-08-29T09:57:40.1798967Z ==============================================================================
                      2019-08-29T09:57:40.3135378Z Generating script.
                      2019-08-29T09:57:40.3159326Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:40.3190603Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . ''/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1''
                      2019-08-29T09:57:40.8535909Z Build.DropRoot = \\bies-pbi\release-08.29\459
                      2019-08-29T09:57:40.9035404Z ##[section]Finishing: Get Setted variables
                      2019-08-29T09:57:40.9042260Z ##[section]Starting: Run a multi-line script
                      2019-08-29T09:57:40.9044915Z ==============================================================================
                      2019-08-29T09:57:40.9045015Z Task         : Command line
                      2019-08-29T09:57:40.9045051Z Description  : Run a command line script using Bash on Linux and macOS and cmd.exe on Windows
                      2019-08-29T09:57:40.9045085Z Version      : 2.151.2
                      2019-08-29T09:57:40.9045166Z Author       : Microsoft Corporation
                      2019-08-29T09:57:40.9045201Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/command-line
                      2019-08-29T09:57:40.9045235Z ==============================================================================
                      2019-08-29T09:57:41.0349633Z Generating script.
                      2019-08-29T09:57:41.0373030Z ========================== Starting Command Output ===========================
                      2019-08-29T09:57:41.0403492Z [command]/bin/bash --noprofile --norc /home/vsts/work/_temp/f9d6fee3-f45b-4b03-9588-5b245e1cf62d.sh
                      2019-08-29T09:57:41.0487550Z Add other tasks to build, test, and deploy your project.
                      2019-08-29T09:57:41.0487892Z See https://aka.ms/yaml
                      2019-08-29T09:57:41.0560683Z ##[section]Finishing: Run a multi-line script
                      2019-08-29T09:57:41.0570319Z ##[section]Starting: Checkout
                      2019-08-29T09:57:41.0571910Z ==============================================================================
                      2019-08-29T09:57:41.0571998Z Task         : Get sources
                      2019-08-29T09:57:41.0572032Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                      2019-08-29T09:57:41.0572064Z Version      : 1.0.0
                      2019-08-29T09:57:41.0572135Z Author       : Microsoft
                      2019-08-29T09:57:41.0572168Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                      2019-08-29T09:57:41.0572199Z ==============================================================================
                      2019-08-29T09:57:41.4718241Z Cleaning any cached credential from repository: test (Git)
                      2019-08-29T09:57:41.4759355Z ##[section]Finishing: Checkout
                      2019-08-29T09:57:41.4828469Z ##[section]Starting: Finalize Job
                      2019-08-29T09:57:41.4871869Z Start cleaning up orphan processes.
                      2019-08-29T09:57:41.4965538Z ##[section]Finishing: Finalize Job
                      2019-08-29T09:57:41.5020909Z ##[section]Finishing: Job', '2019-08-29T15:57:17.0000000+06:00', 483, N'Container');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'CreatedOn', N'Data', N'LastChangedOn', N'LinesCount', N'Type') AND [object_id] = OBJECT_ID(N'[BuildLogs]'))
          SET IDENTITY_INSERT [BuildLogs] OFF;