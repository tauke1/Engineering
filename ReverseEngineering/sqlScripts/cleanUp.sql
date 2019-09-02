DELETE tr FROM TimelineRecords tr
inner join Timelines t on t.Id = tr.TimelineId
inner join Builds b on b.Id = t.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE t FROM Timelines t
inner join Builds b on b.Id = t.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE bl FROM BuildLogs bl
inner join Builds b on b.Id = bl.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE bi FROM BuildIssues bi
inner join Builds b on b.Id = bi.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE bp FROM BuildProperties bp
inner join Builds b on b.Id = bp.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tar from TestActionResults tar
inner join TestResultIterationDetails trid on trid.Id = tar.TestResultIterationId
inner join TestResults tr on tr.Id = trid.TestResultId
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE trid FROM TestResultIterationDetails trid
inner join TestResults tr on tr.Id = trid.TestResultId
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tra FROM TestResultAttachments tra
inner join TestResults tr on tr.Id = tra.TestResultId
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE trcf FROM TestResultCustomFields trcf
inner join TestResults tr on tr.Id = trcf.TestResultId
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tr FROM TestResults tr
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tr FROM TestResults tr
inner join TestRuns tr1 on tr1.Id = tr.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE trcf FROM TestRunCustomFields trcf
inner join TestRuns tr1 on tr1.Id = trcf.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tra FROM TestRunAttachments tra
inner join TestRuns tr1 on tr1.Id = tra.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE trt FROM TestRunTags trt
inner join TestRuns tr1 on tr1.Id = trt.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE trs FROM TestRunStatistics trs
inner join TestRuns tr1 on tr1.Id = trs.TestRunId
inner join Builds b on b.Id = tr1.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);

DELETE tr FROM TestRuns tr
inner join Builds b on b.Id = tr.BuildId
inner join Definitions d on d.Id = b.BuildDefinitionId
WHERE d.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);


DELETE df FROM Definitions df
WHERE df.CreatedDate <= DATEADD(month, -1, CURRENT_TIMESTAMP);
