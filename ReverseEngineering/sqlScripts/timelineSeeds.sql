      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'ChangeId', N'LastChangedOn', N'lastChangedByUserId') AND [object_id] = OBJECT_ID(N'[Timelines]'))
          SET IDENTITY_INSERT [Timelines] ON;
      INSERT INTO [Timelines] ([Id], [BuildId], [ChangeId], [LastChangedOn], [lastChangedByUserId])
      VALUES ('cf2a4f36-a16a-4b3e-8512-527322c2dff8', 1, 20, '2019-08-29T15:57:44.0870000+06:00', '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f'),
      ('715b6e62-c9a8-43f6-bbd1-ff32a58c0190', 2, 20, '2019-08-29T15:57:44.0870000+06:00', '9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'BuildId', N'ChangeId', N'LastChangedOn', N'lastChangedByUserId') AND [object_id] = OBJECT_ID(N'[Timelines]'))
          SET IDENTITY_INSERT [Timelines] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] ON;
      INSERT INTO [TimelineRecords] ([Id], [Attempt], [ChangeId], [CurrentOperation], [DetailsId], [ErrorCount], [FinishTime], [Identifier], [LastModified], [LogId], [Name], [Order], [ParentId], [PercentComplete], [ResultCode], [ResultId], [StartTime], [StateId], [TaskId], [TimelineId], [Type], [WarningCount], [WorkerName])
      VALUES ('96ac2280-8cb4-5df5-99de-dd2da759617d', 1, 6, NULL, NULL, 0, '2019-08-29T15:57:43.8000000+06:00', N'__default', '0001-01-01T00:00:00.0000000', NULL, N'__default', 1, NULL, NULL, NULL, 2, '2019-08-29T15:57:27.0766667+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Stage', 0, NULL),
      ('a1c686c1-7ed5-4f53-8f71-222f6235878c', 1, 8, NULL, NULL, 0, '2019-08-26T19:06:01.4233333+06:00', NULL, '0001-01-01T00:00:00.0000000', 15, N'Initialize job', 1, NULL, NULL, NULL, 2, '2019-08-26T19:05:59.3600000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('d54b3ef5-d6df-4453-9c0a-e65778daac92', 1, 19, NULL, NULL, 0, '2019-08-26T19:06:12.4700000+06:00', N'Job.__default', '0001-01-01T00:00:00.0000000', 21, N'Job', 1, NULL, NULL, NULL, 2, '2019-08-26T19:05:59.1400000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Job', 0, N'Azure Pipelines 8'),
      ('77fd62a2-c1b0-4a9d-ab6f-01b3edd8ce3a', 1, 2, NULL, NULL, 0, '2019-08-26T19:05:48.7533333+06:00', N'Checkpoint', '0001-01-01T00:00:00.0000000', NULL, N'Checkpoint', 0, NULL, NULL, NULL, 2, '2019-08-26T19:05:48.7533333+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Checkpoint', 0, NULL),
      ('c01af22c-28ae-4ec2-88a3-2c25fd1c19f7', 1, 15, NULL, NULL, 0, '2019-08-26T19:06:12.0166667+06:00', NULL, '0001-01-01T00:00:00.0000000', 18, N'Set Build Variables', 4, NULL, NULL, NULL, 2, '2019-08-26T19:06:06.8666667+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('bf767302-d4a5-4f36-b36e-2af5b6ea0e69', 1, 15, NULL, NULL, 0, '2019-08-26T19:06:12.4633333+06:00', NULL, '0001-01-01T00:00:00.0000000', 20, N'Finalize Job', 7, NULL, NULL, NULL, 2, '2019-08-26T19:06:12.4400000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('e4189da9-018d-4cf7-ad86-bdfcb05019c7', 1, 13, NULL, NULL, 0, '2019-08-26T19:06:06.8666667+06:00', NULL, '0001-01-01T00:00:00.0000000', 17, N'Run a one-line script', 3, NULL, NULL, NULL, 2, '2019-08-26T19:06:04.7600000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('e7056187-75d6-4871-94dd-99ad27dee781', 1, 15, NULL, NULL, 0, '2019-08-26T19:06:12.4333333+06:00', NULL, '0001-01-01T00:00:00.0000000', 19, N'Post-job: Checkout', 6, NULL, NULL, NULL, 2, '2019-08-26T19:06:12.0166667+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('355b3149-f885-4b52-8231-7d039e386ec1', 1, 14, NULL, NULL, 1, '2019-08-26T19:06:12.0166667+06:00', NULL, '0001-01-01T00:00:00.0000000', NULL, N'Run a multi-line script', 5, NULL, NULL, N'Evaluating: SucceededNode()Result: False', 3, '2019-08-26T19:06:12.0166667+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8'),
      ('468d9ab3-335d-42f2-9037-d7524aa3c1e1', 1, 18, NULL, NULL, 0, '2019-08-26T19:06:15.1166667+06:00', NULL, '0001-01-01T00:00:00.0000000', 22, N'Report build status', 2147483647, NULL, NULL, NULL, 2, '2019-08-26T19:06:14.9966667+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, NULL),
      ('4fe87575-fe2b-4c2f-9e62-7678117b580b', 1, 6, NULL, NULL, 0, '2019-08-26T19:06:14.9600000+06:00', N'__default', '0001-01-01T00:00:00.0000000', NULL, N'__default', 1, NULL, NULL, NULL, 2, '2019-08-26T19:05:59.1400000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Stage', 0, NULL),
      ('59cf6333-4b0d-43b2-a78f-097b862358af', 1, 16, NULL, NULL, 0, '2019-08-26T19:06:14.4133333+06:00', N'Job', '0001-01-01T00:00:00.0000000', 14, N'Job', 1, NULL, NULL, NULL, 2, '2019-08-26T19:05:59.1400000+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Phase', 0, NULL),
      ('cd1b5955-97ac-4e41-a843-f523a5690ee2', 1, 11, NULL, NULL, 0, '2019-08-26T19:06:04.7600000+06:00', NULL, '0001-01-01T00:00:00.0000000', 16, N'Checkout', 2, NULL, NULL, NULL, 2, '2019-08-26T19:06:01.4366667+06:00', 1, NULL, '715b6e62-c9a8-43f6-bbd1-ff32a58c0190', N'Task', 0, N'Azure Pipelines 8');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] ON;
      INSERT INTO [TimelineRecords] ([Id], [Attempt], [ChangeId], [CurrentOperation], [DetailsId], [ErrorCount], [FinishTime], [Identifier], [LastModified], [LogId], [Name], [Order], [ParentId], [PercentComplete], [ResultCode], [ResultId], [StartTime], [StateId], [TaskId], [TimelineId], [Type], [WarningCount], [WorkerName])
      VALUES ('dec844a6-4c14-4d99-9232-db5a0134d5d7', 1, 2, NULL, NULL, 0, '2019-08-29T15:57:17.5600000+06:00', N'Checkpoint', '0001-01-01T00:00:00.0000000', NULL, N'Checkpoint', 0, '96ac2280-8cb4-5df5-99de-dd2da759617d', NULL, NULL, 2, '2019-08-29T15:57:17.5600000+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Checkpoint', 0, NULL);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] ON;
      INSERT INTO [TimelineRecords] ([Id], [Attempt], [ChangeId], [CurrentOperation], [DetailsId], [ErrorCount], [FinishTime], [Identifier], [LastModified], [LogId], [Name], [Order], [ParentId], [PercentComplete], [ResultCode], [ResultId], [StartTime], [StateId], [TaskId], [TimelineId], [Type], [WarningCount], [WorkerName])
      VALUES ('3a3a2a60-14c7-570b-14a4-fa42ad92f52a', 1, 17, NULL, NULL, 0, '2019-08-29T15:57:43.6233333+06:00', N'Job', '0001-01-01T00:00:00.0000000', 2, N'Job', 1, '96ac2280-8cb4-5df5-99de-dd2da759617d', NULL, NULL, 2, '2019-08-29T15:57:27.0766667+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Phase', 0, NULL);
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] ON;
      INSERT INTO [TimelineRecords] ([Id], [Attempt], [ChangeId], [CurrentOperation], [DetailsId], [ErrorCount], [FinishTime], [Identifier], [LastModified], [LogId], [Name], [Order], [ParentId], [PercentComplete], [ResultCode], [ResultId], [StartTime], [StateId], [TaskId], [TimelineId], [Type], [WarningCount], [WorkerName])
      VALUES ('12f1170f-54f2-53f3-20dd-22fc7dff55f9', 1, 20, NULL, NULL, 0, '2019-08-29T15:57:41.5033333+06:00', N'Job.__default', '0001-01-01T00:00:00.0000000', 11, N'Job', 1, '3a3a2a60-14c7-570b-14a4-fa42ad92f52a', NULL, NULL, 2, '2019-08-29T15:57:27.0766667+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Job', 0, N'Hosted Agent');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] OFF;
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] ON;
      INSERT INTO [TimelineRecords] ([Id], [Attempt], [ChangeId], [CurrentOperation], [DetailsId], [ErrorCount], [FinishTime], [Identifier], [LastModified], [LogId], [Name], [Order], [ParentId], [PercentComplete], [ResultCode], [ResultId], [StartTime], [StateId], [TaskId], [TimelineId], [Type], [WarningCount], [WorkerName])
      VALUES ('d1e88c09-dceb-53c1-5579-19c846f3526a', 1, 15, NULL, NULL, 0, '2019-08-29T15:57:40.1800000+06:00', NULL, '0001-01-01T00:00:00.0000000', 6, N'Set Build Variables', 4, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:34.5800000+06:00', 1, 'e213ff0f-5d5c-4791-802d-52ea3e7be1f1', 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('036ed663-514a-59f3-0c88-23d2cf182147', 1, 16, NULL, NULL, 0, '2019-08-29T15:57:40.9033333+06:00', NULL, '0001-01-01T00:00:00.0000000', 7, N'Get Setted variables', 5, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:40.1800000+06:00', 1, 'e213ff0f-5d5c-4791-802d-52ea3e7be1f1', 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('f3308f0e-00fd-4d02-932c-43c5359ddb48', 1, 8, NULL, NULL, 0, '2019-08-29T15:57:28.8633333+06:00', NULL, '0001-01-01T00:00:00.0000000', 3, N'Initialize job', 1, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:27.3033333+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('f8ed7bd8-2a7f-56f6-9385-7fc29a8b5b7b', 1, 13, NULL, NULL, 0, '2019-08-29T15:57:34.5800000+06:00', NULL, '0001-01-01T00:00:00.0000000', 5, N'Run a one-line script', 3, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:32.4933333+06:00', 1, 'd9bafed4-0b18-4f58-968d-86655b4d2ce9', 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('c14bc0fb-11e2-488b-aaec-a6128f529b9f', 1, 16, NULL, NULL, 0, '2019-08-29T15:57:41.4766667+06:00', NULL, '0001-01-01T00:00:00.0000000', 9, N'Post-job: Checkout', 7, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:41.0566667+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('5caf77c8-9b10-50ef-b5c7-ca89c63e1c86', 1, 16, NULL, NULL, 0, '2019-08-29T15:57:41.0566667+06:00', NULL, '0001-01-01T00:00:00.0000000', 8, N'Run a multi-line script', 6, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:40.9033333+06:00', 1, 'd9bafed4-0b18-4f58-968d-86655b4d2ce9', 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('78db2542-c627-4140-8a7a-d06178fff4e4', 1, 19, NULL, NULL, 0, '2019-08-29T15:57:44.0633333+06:00', NULL, '0001-01-01T00:00:00.0000000', 12, N'Report build status', 2147483647, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:43.8500000+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, NULL),
      ('4ed93e8f-bd80-48d5-b451-d254d8f682e6', 1, 16, NULL, NULL, 0, '2019-08-29T15:57:41.4966667+06:00', NULL, '0001-01-01T00:00:00.0000000', 10, N'Finalize Job', 8, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:41.4833333+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent'),
      ('63e8042a-f367-5aec-692c-fcc654be55e4', 1, 11, NULL, NULL, 0, '2019-08-29T15:57:32.4900000+06:00', NULL, '0001-01-01T00:00:00.0000000', 4, N'Checkout', 2, '12f1170f-54f2-53f3-20dd-22fc7dff55f9', NULL, NULL, 2, '2019-08-29T15:57:28.8733333+06:00', 1, NULL, 'cf2a4f36-a16a-4b3e-8512-527322c2dff8', N'Task', 0, N'Hosted Agent');
      IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Attempt', N'ChangeId', N'CurrentOperation', N'DetailsId', N'ErrorCount', N'FinishTime', N'Identifier', N'LastModified', N'LogId', N'Name', N'Order', N'ParentId', N'PercentComplete', N'ResultCode', N'ResultId', N'StartTime', N'StateId', N'TaskId', N'TimelineId', N'Type', N'WarningCount', N'WorkerName') AND [object_id] = OBJECT_ID(N'[TimelineRecords]'))
          SET IDENTITY_INSERT [TimelineRecords] OFF;