using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AzureDevOps.Migrations
{
    public partial class Init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BuildAuthorizationScopes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildAuthorizationScopes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildDefinitionQualities",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildDefinitionQualities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildDefinitionQueueStatuses",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildDefinitionQueueStatuses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildDefinitionTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildDefinitionTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildIssueTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildIssueTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildQueuePriorities",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildQueuePriorities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildReasons",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildReasons", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildResults",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildResults", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildStatuses",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildStatuses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BuildTriggerTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildTriggerTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProjectStates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectStates", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProjectVisibilities",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectVisibilities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskAgentPools",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    IsHosted = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(maxLength: 255, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskAgentPools", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskResults",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskResults", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TestResultFailureTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResultFailureTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TestResultGroupTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResultGroupTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TestRunStates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunStates", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TestRunSubstates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunSubstates", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TestSuiteType",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestSuiteType", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TimelineRecordStates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TimelineRecordStates", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Projects",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: true),
                    Abbreviation = table.Column<string>(maxLength: 64, nullable: true),
                    TeamId = table.Column<Guid>(nullable: true),
                    LastUpdateTime = table.Column<DateTime>(nullable: true),
                    Revision = table.Column<int>(nullable: false),
                    VisibilityId = table.Column<int>(nullable: false),
                    StateId = table.Column<int>(nullable: false),
                    OrganizationName = table.Column<string>(maxLength: 255, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Projects", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Projects_ProjectStates_StateId",
                        column: x => x.StateId,
                        principalTable: "ProjectStates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Projects_ProjectVisibilities_VisibilityId",
                        column: x => x.VisibilityId,
                        principalTable: "ProjectVisibilities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AgentPoolQueues",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    PoolId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AgentPoolQueues", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AgentPoolQueues_TaskAgentPools_PoolId",
                        column: x => x.PoolId,
                        principalTable: "TaskAgentPools",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "GitRepositories",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    IsFork = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    ParentRepositoryId = table.Column<Guid>(nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    RemoteUrl = table.Column<string>(nullable: true),
                    Size = table.Column<int>(nullable: false),
                    SshUrl = table.Column<string>(maxLength: 255, nullable: true),
                    WebUrl = table.Column<string>(maxLength: 255, nullable: true),
                    DefaultBranch = table.Column<string>(maxLength: 255, nullable: false),
                    Type = table.Column<string>(maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GitRepositories", x => x.Id);
                    table.ForeignKey(
                        name: "FK_GitRepositories_GitRepositories_ParentRepositoryId",
                        column: x => x.ParentRepositoryId,
                        principalTable: "GitRepositories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_GitRepositories_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Definitions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AuthoredBy = table.Column<Guid>(nullable: false),
                    BadgeEnabled = table.Column<bool>(nullable: false),
                    BuildNumberFormat = table.Column<string>(maxLength: 255, nullable: true),
                    Comment = table.Column<string>(maxLength: 512, nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: true),
                    DraftOfDefinitionId = table.Column<int>(nullable: true),
                    DropLocation = table.Column<string>(maxLength: 512, nullable: true),
                    JobCancelTimeoutInMinutes = table.Column<int>(nullable: false),
                    JobTimeoutInMinutes = table.Column<int>(nullable: false),
                    Name = table.Column<string>(maxLength: 512, nullable: false),
                    JobAuthorizationScopeId = table.Column<int>(nullable: false),
                    YamlFileName = table.Column<string>(maxLength: 512, nullable: false),
                    Path = table.Column<string>(maxLength: 512, nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    QualityId = table.Column<int>(nullable: false),
                    QueueId = table.Column<int>(nullable: false),
                    QueueStatusId = table.Column<int>(nullable: false),
                    Revision = table.Column<int>(nullable: false),
                    TypeId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Definitions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Definitions_Definitions_DraftOfDefinitionId",
                        column: x => x.DraftOfDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_BuildAuthorizationScopes_JobAuthorizationScopeId",
                        column: x => x.JobAuthorizationScopeId,
                        principalTable: "BuildAuthorizationScopes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_BuildDefinitionQualities_QualityId",
                        column: x => x.QualityId,
                        principalTable: "BuildDefinitionQualities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_AgentPoolQueues_QueueId",
                        column: x => x.QueueId,
                        principalTable: "AgentPoolQueues",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_BuildDefinitionQueueStatuses_QueueStatusId",
                        column: x => x.QueueStatusId,
                        principalTable: "BuildDefinitionQueueStatuses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Definitions_BuildDefinitionTypes_TypeId",
                        column: x => x.TypeId,
                        principalTable: "BuildDefinitionTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildDefinitionVariables",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AllowOverride = table.Column<bool>(nullable: false),
                    IsSecret = table.Column<bool>(nullable: false),
                    Value = table.Column<string>(maxLength: 512, nullable: false),
                    BuildDefinitionId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildDefinitionVariables", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildDefinitionVariables_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildRepository",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Clean = table.Column<string>(maxLength: 255, nullable: true),
                    DefaultBranch = table.Column<string>(nullable: false),
                    RootFolder = table.Column<string>(maxLength: 255, nullable: true),
                    CheckoutSubmodules = table.Column<bool>(nullable: false),
                    BuildDefinitionId = table.Column<int>(nullable: false),
                    GitRepositoryId = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildRepository", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildRepository_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildRepository_GitRepositories_GitRepositoryId",
                        column: x => x.GitRepositoryId,
                        principalTable: "GitRepositories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildTriggers",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildDefinitionId = table.Column<int>(nullable: false),
                    TriggerTypeId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildTriggers", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildTriggers_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildTriggers_BuildTriggerTypes_TriggerTypeId",
                        column: x => x.TriggerTypeId,
                        principalTable: "BuildTriggerTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "DefinitionProperties",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildDefinitionId = table.Column<int>(nullable: false),
                    Key = table.Column<string>(maxLength: 255, nullable: false),
                    Value = table.Column<string>(maxLength: 512, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DefinitionProperties", x => x.Id);
                    table.ForeignKey(
                        name: "FK_DefinitionProperties_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Builds",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildNumber = table.Column<string>(maxLength: 255, nullable: false),
                    StatusId = table.Column<int>(nullable: false),
                    ResultId = table.Column<int>(nullable: false),
                    QueueTime = table.Column<DateTime>(nullable: true),
                    StartDate = table.Column<DateTime>(nullable: true),
                    FinishTime = table.Column<DateTime>(nullable: true),
                    BuildDefinitionId = table.Column<int>(nullable: false),
                    BuildNumberRevision = table.Column<int>(nullable: false),
                    SourceBranch = table.Column<string>(maxLength: 255, nullable: false),
                    SourceVersion = table.Column<string>(maxLength: 255, nullable: false),
                    QueueId = table.Column<int>(nullable: false),
                    QueuePriorityId = table.Column<int>(nullable: false),
                    ReasonId = table.Column<int>(nullable: false),
                    LastChangedDate = table.Column<DateTime>(nullable: true),
                    LastChangedBy = table.Column<Guid>(nullable: true),
                    KeepForever = table.Column<bool>(nullable: false),
                    RetainedByRelease = table.Column<bool>(nullable: false),
                    TriggeredByBuildId = table.Column<int>(nullable: true),
                    BuildRepositoryId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Builds", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Builds_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_BuildRepository_BuildRepositoryId",
                        column: x => x.BuildRepositoryId,
                        principalTable: "BuildRepository",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_AgentPoolQueues_QueueId",
                        column: x => x.QueueId,
                        principalTable: "AgentPoolQueues",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_BuildQueuePriorities_QueuePriorityId",
                        column: x => x.QueuePriorityId,
                        principalTable: "BuildQueuePriorities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_BuildReasons_ReasonId",
                        column: x => x.ReasonId,
                        principalTable: "BuildReasons",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_BuildResults_ResultId",
                        column: x => x.ResultId,
                        principalTable: "BuildResults",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_BuildStatuses_StatusId",
                        column: x => x.StatusId,
                        principalTable: "BuildStatuses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Builds_Builds_TriggeredByBuildId",
                        column: x => x.TriggeredByBuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildConfigurations",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildId = table.Column<int>(nullable: false),
                    BranchName = table.Column<string>(maxLength: 255, nullable: true),
                    BuildDefinitionId = table.Column<int>(nullable: false),
                    BuildSystem = table.Column<string>(maxLength: 255, nullable: true),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    Flavor = table.Column<string>(maxLength: 255, nullable: true),
                    Number = table.Column<string>(maxLength: 255, nullable: true),
                    BuildConfigurationPlatform = table.Column<string>(maxLength: 255, nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    RepositoryId = table.Column<Guid>(nullable: false),
                    RepositoryType = table.Column<string>(maxLength: 255, nullable: true),
                    SourceVersion = table.Column<string>(maxLength: 255, nullable: true),
                    TargetBranchName = table.Column<string>(maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildConfigurations", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildConfigurations_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildConfigurations_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildConfigurations_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildConfigurations_GitRepositories_RepositoryId",
                        column: x => x.RepositoryId,
                        principalTable: "GitRepositories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildIssues",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Category = table.Column<string>(maxLength: 255, nullable: false),
                    Data = table.Column<string>(maxLength: 3000, nullable: true),
                    Message = table.Column<string>(maxLength: 512, nullable: false),
                    IssueTypeId = table.Column<int>(nullable: false),
                    BuildId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildIssues", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildIssues_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_BuildIssues_BuildIssueTypes_IssueTypeId",
                        column: x => x.IssueTypeId,
                        principalTable: "BuildIssueTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildLogs",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildId = table.Column<int>(nullable: false),
                    LinesCount = table.Column<int>(nullable: false),
                    Type = table.Column<string>(maxLength: 255, nullable: false),
                    Data = table.Column<string>(nullable: false),
                    CreatedOn = table.Column<DateTime>(nullable: false),
                    LastChangedOn = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildLogs", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildLogs_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "BuildProperties",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildId = table.Column<int>(nullable: false),
                    Key = table.Column<string>(maxLength: 255, nullable: false),
                    Value = table.Column<string>(maxLength: 255, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BuildProperties", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BuildProperties_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Timelines",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    lastChangedByUserId = table.Column<Guid>(nullable: true),
                    LastChangedOn = table.Column<DateTime>(nullable: true),
                    BuildId = table.Column<int>(nullable: false),
                    ChangeId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Timelines", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Timelines_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TimelineRecords",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    ParentId = table.Column<Guid>(nullable: true),
                    Type = table.Column<string>(maxLength: 255, nullable: false),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    StartTime = table.Column<DateTime>(nullable: true),
                    FinishTime = table.Column<DateTime>(nullable: true),
                    CurrentOperation = table.Column<string>(maxLength: 255, nullable: true),
                    PercentComplete = table.Column<int>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    ResultId = table.Column<int>(nullable: false),
                    ResultCode = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    WorkerName = table.Column<string>(maxLength: 512, nullable: true),
                    Order = table.Column<int>(nullable: false),
                    DetailsId = table.Column<Guid>(nullable: true),
                    ErrorCount = table.Column<int>(nullable: false),
                    WarningCount = table.Column<int>(nullable: false),
                    LogId = table.Column<int>(nullable: true),
                    Identifier = table.Column<string>(maxLength: 255, nullable: true),
                    Attempt = table.Column<int>(nullable: false),
                    TimelineId = table.Column<Guid>(nullable: false),
                    ChangeId = table.Column<int>(nullable: false),
                    TaskId = table.Column<Guid>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TimelineRecords", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TimelineRecords_BuildLogs_LogId",
                        column: x => x.LogId,
                        principalTable: "BuildLogs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TimelineRecords_TimelineRecords_ParentId",
                        column: x => x.ParentId,
                        principalTable: "TimelineRecords",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TimelineRecords_TaskResults_ResultId",
                        column: x => x.ResultId,
                        principalTable: "TaskResults",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TimelineRecords_TimelineRecordStates_StateId",
                        column: x => x.StateId,
                        principalTable: "TimelineRecordStates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TimelineRecords_Timelines_TimelineId",
                        column: x => x.TimelineId,
                        principalTable: "Timelines",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TimelineAttempts",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    RecordId = table.Column<Guid>(nullable: false),
                    TimelineId = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TimelineAttempts", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TimelineAttempts_TimelineRecords_RecordId",
                        column: x => x.RecordId,
                        principalTable: "TimelineRecords",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TimelineAttempts_Timelines_TimelineId",
                        column: x => x.TimelineId,
                        principalTable: "Timelines",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestRuns",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    BuildId = table.Column<int>(nullable: true),
                    BuildConfigurationId = table.Column<int>(nullable: true),
                    Comment = table.Column<string>(maxLength: 512, nullable: true),
                    CompletedDate = table.Column<DateTime>(nullable: true),
                    Controller = table.Column<string>(maxLength: 255, nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    DropLocation = table.Column<string>(maxLength: 255, nullable: true),
                    DueDate = table.Column<DateTime>(nullable: true),
                    ErrorMessage = table.Column<string>(maxLength: 512, nullable: true),
                    IncompleteTests = table.Column<int>(nullable: false),
                    IsAutomated = table.Column<bool>(nullable: false),
                    Iteration = table.Column<string>(maxLength: 128, nullable: true),
                    LastUpdatedByUserId = table.Column<Guid>(nullable: true),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    NotApplicableTests = table.Column<int>(nullable: false),
                    OwnerUserId = table.Column<Guid>(nullable: false),
                    PassedTests = table.Column<int>(nullable: false),
                    Phase = table.Column<string>(maxLength: 128, nullable: true),
                    TestPlanId = table.Column<int>(nullable: true),
                    PostProcessState = table.Column<string>(maxLength: 255, nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    Revision = table.Column<int>(nullable: false),
                    StartedDate = table.Column<DateTime>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    SubstateId = table.Column<int>(nullable: true),
                    TestMessageLogId = table.Column<int>(nullable: true),
                    TotalTests = table.Column<int>(nullable: false),
                    UnanalyzedTests = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRuns", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestRuns_BuildConfigurations_BuildConfigurationId",
                        column: x => x.BuildConfigurationId,
                        principalTable: "BuildConfigurations",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestRuns_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestRuns_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestRuns_TestRunStates_StateId",
                        column: x => x.StateId,
                        principalTable: "TestRunStates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestRuns_TestRunSubstates_SubstateId",
                        column: x => x.SubstateId,
                        principalTable: "TestRunSubstates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestRunAttachments",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Stream = table.Column<string>(maxLength: 3000, nullable: true),
                    FileName = table.Column<string>(maxLength: 255, nullable: false),
                    AttachmentType = table.Column<string>(maxLength: 128, nullable: false),
                    TestRunId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunAttachments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestRunAttachments_TestRuns_TestRunId",
                        column: x => x.TestRunId,
                        principalTable: "TestRuns",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestRunCustomFields",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    FieldName = table.Column<string>(maxLength: 255, nullable: false),
                    Value = table.Column<string>(maxLength: 255, nullable: false),
                    TestRunId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunCustomFields", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestRunCustomFields_TestRuns_TestRunId",
                        column: x => x.TestRunId,
                        principalTable: "TestRuns",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestRunStatistics",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    State = table.Column<string>(maxLength: 255, nullable: false),
                    Count = table.Column<int>(nullable: false),
                    TestRunId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunStatistics", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestRunStatistics_TestRuns_TestRunId",
                        column: x => x.TestRunId,
                        principalTable: "TestRuns",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestRunTags",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Tag = table.Column<string>(maxLength: 32, nullable: false),
                    TestRunId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRunTags", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestRunTags_TestRuns_TestRunId",
                        column: x => x.TestRunId,
                        principalTable: "TestRuns",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestPlans",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AreaPath = table.Column<string>(maxLength: 255, nullable: true),
                    BuildDefinitionId = table.Column<int>(nullable: true),
                    BuildId = table.Column<int>(nullable: true),
                    Description = table.Column<string>(maxLength: 512, nullable: true),
                    EndDate = table.Column<DateTime>(nullable: true),
                    Iteration = table.Column<string>(maxLength: 255, nullable: true),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    OwnerUserId = table.Column<Guid>(nullable: false),
                    PreviousBuildId = table.Column<int>(nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    Revision = table.Column<int>(nullable: false),
                    RootSuiteId = table.Column<int>(nullable: true),
                    StartDate = table.Column<DateTime>(nullable: true),
                    State = table.Column<string>(maxLength: 255, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestPlans", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestPlans_Definitions_BuildDefinitionId",
                        column: x => x.BuildDefinitionId,
                        principalTable: "Definitions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestPlans_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestPlans_Builds_PreviousBuildId",
                        column: x => x.PreviousBuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestPlans_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestPlanVariables",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    Description = table.Column<string>(maxLength: 512, nullable: true),
                    TestPlanId = table.Column<int>(nullable: false),
                    ProjectID = table.Column<Guid>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestPlanVariables", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestPlanVariables_Projects_ProjectID",
                        column: x => x.ProjectID,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestPlanVariables_TestPlans_TestPlanId",
                        column: x => x.TestPlanId,
                        principalTable: "TestPlans",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestSuite",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    InheritDefaultConfigurations = table.Column<bool>(nullable: false),
                    LastError = table.Column<string>(maxLength: 255, nullable: true),
                    LastPopulatedDate = table.Column<DateTime>(nullable: true),
                    LastUpdatedByUser = table.Column<Guid>(nullable: true),
                    LastUpdatedDate = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 255, nullable: false),
                    ParentTestSuiteId = table.Column<int>(nullable: true),
                    TestPlanId = table.Column<int>(nullable: true),
                    ProjectId = table.Column<Guid>(nullable: false),
                    QueryString = table.Column<string>(maxLength: 255, nullable: true),
                    RequirementId = table.Column<int>(nullable: true),
                    Revision = table.Column<int>(nullable: false),
                    SuiteTypeId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestSuite", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestSuite_TestSuite_ParentTestSuiteId",
                        column: x => x.ParentTestSuiteId,
                        principalTable: "TestSuite",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestSuite_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestSuite_TestSuiteType_SuiteTypeId",
                        column: x => x.SuiteTypeId,
                        principalTable: "TestSuiteType",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestSuite_TestPlans_TestPlanId",
                        column: x => x.TestPlanId,
                        principalTable: "TestPlans",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestResults",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AfnStripId = table.Column<int>(nullable: true),
                    AutomatedTestId = table.Column<string>(maxLength: 128, nullable: true),
                    AutomatedTestName = table.Column<string>(maxLength: 255, nullable: true),
                    AutomatedTestStorage = table.Column<string>(maxLength: 255, nullable: true),
                    AutomatedTestType = table.Column<string>(maxLength: 128, nullable: true),
                    AutomatedTestTypeId = table.Column<string>(maxLength: 128, nullable: true),
                    BuildId = table.Column<int>(nullable: true),
                    Comment = table.Column<string>(maxLength: 512, nullable: true),
                    CompletedDate = table.Column<DateTime>(nullable: true),
                    ComputerName = table.Column<string>(maxLength: 255, nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    DurationInMs = table.Column<decimal>(nullable: true),
                    ErrorMessage = table.Column<string>(maxLength: 512, nullable: true),
                    FailureTypeId = table.Column<int>(nullable: false),
                    LastUpdatedByUserId = table.Column<Guid>(nullable: true),
                    LastUpdatedDate = table.Column<DateTime>(nullable: true),
                    Outcome = table.Column<string>(maxLength: 1024, nullable: true),
                    Priority = table.Column<int>(nullable: false),
                    ProjectId = table.Column<Guid>(nullable: false),
                    ResetCount = table.Column<int>(nullable: true),
                    GroupTypeId = table.Column<int>(nullable: false),
                    Revision = table.Column<int>(nullable: false),
                    RunByUserId = table.Column<Guid>(nullable: true),
                    StackTrace = table.Column<string>(maxLength: 10000, nullable: true),
                    StartDate = table.Column<DateTime>(nullable: true),
                    TestRunStateId = table.Column<int>(nullable: false),
                    TestCaseId = table.Column<int>(nullable: true),
                    TestRunId = table.Column<int>(nullable: false),
                    TestSuiteId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResults", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestResults_Builds_BuildId",
                        column: x => x.BuildId,
                        principalTable: "Builds",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_TestResultFailureTypes_FailureTypeId",
                        column: x => x.FailureTypeId,
                        principalTable: "TestResultFailureTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_TestResultGroupTypes_GroupTypeId",
                        column: x => x.GroupTypeId,
                        principalTable: "TestResultGroupTypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_Projects_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Projects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_TestRuns_TestRunId",
                        column: x => x.TestRunId,
                        principalTable: "TestRuns",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_TestRunStates_TestRunStateId",
                        column: x => x.TestRunStateId,
                        principalTable: "TestRunStates",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TestResults_TestSuite_TestSuiteId",
                        column: x => x.TestSuiteId,
                        principalTable: "TestSuite",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestResultAttachments",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Stream = table.Column<string>(maxLength: 10000, nullable: false),
                    FileName = table.Column<string>(maxLength: 255, nullable: false),
                    AttachmentType = table.Column<string>(maxLength: 128, nullable: false),
                    TestResultId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResultAttachments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestResultAttachments_TestResults_TestResultId",
                        column: x => x.TestResultId,
                        principalTable: "TestResults",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestResultCustomFields",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    FieldName = table.Column<string>(maxLength: 255, nullable: false),
                    Value = table.Column<string>(maxLength: 512, nullable: false),
                    TestResultId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResultCustomFields", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestResultCustomFields_TestResults_TestResultId",
                        column: x => x.TestResultId,
                        principalTable: "TestResults",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestResultIterationDetails",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Comment = table.Column<string>(maxLength: 1024, nullable: true),
                    CompletedDate = table.Column<DateTime>(nullable: true),
                    DurationInMs = table.Column<decimal>(nullable: false),
                    ErrorMessage = table.Column<string>(maxLength: 512, nullable: true),
                    TestResultId = table.Column<int>(nullable: false),
                    Outcome = table.Column<string>(maxLength: 1024, nullable: true),
                    StartedDate = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestResultIterationDetails", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestResultIterationDetails_TestResults_TestResultId",
                        column: x => x.TestResultId,
                        principalTable: "TestResults",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TestActionResults",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    ActionPath = table.Column<string>(maxLength: 512, nullable: true),
                    Comment = table.Column<string>(maxLength: 512, nullable: true),
                    CompletedDate = table.Column<DateTime>(nullable: true),
                    DurationInMs = table.Column<decimal>(nullable: true),
                    ErrorMessage = table.Column<string>(maxLength: 255, nullable: true),
                    TestResultIterationId = table.Column<int>(nullable: true),
                    Outcome = table.Column<string>(maxLength: 1024, nullable: true),
                    StartDate = table.Column<DateTime>(nullable: true),
                    StepIdentifier = table.Column<string>(maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestActionResults", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TestActionResults_TestResultIterationDetails_TestResultIterationId",
                        column: x => x.TestResultIterationId,
                        principalTable: "TestResultIterationDetails",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.InsertData(
                table: "BuildAuthorizationScopes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "project", "project" },
                    { 2, "projectCollection", "projectCollection" }
                });

            migrationBuilder.InsertData(
                table: "BuildDefinitionQualities",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "definition", "definition" },
                    { 2, "draft", "draft" }
                });

            migrationBuilder.InsertData(
                table: "BuildDefinitionQueueStatuses",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "When disabled the definition queue will not allow builds to be queued by users and the system will not queue scheduled, gated or continuous integration builds. Builds already in the queue will not be started by the system", "disabled" },
                    { 2, "When enabled the definition queue allows builds to be queued by users, the system will queue scheduled, gated and continuous integration builds, and the queued builds will be started by the system", "enabled" },
                    { 3, "When paused the definition queue allows builds to be queued by users and the system will queue scheduled, gated and continuous integration builds. Builds in the queue will not be started by the system", "paused" }
                });

            migrationBuilder.InsertData(
                table: "BuildDefinitionTypes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "build", "build" },
                    { 2, "xaml", "xaml" }
                });

            migrationBuilder.InsertData(
                table: "BuildIssueTypes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "Error Issue Type", "error" },
                    { 2, "Warning Issue Type", "warning" }
                });

            migrationBuilder.InsertData(
                table: "BuildQueuePriorities",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "Above normal priority", "aboveNormal" },
                    { 2, "Below normal priority", "belowNormal" },
                    { 3, "High priority", "high" },
                    { 4, "Low priority", "low" },
                    { 5, "Normal Priority", "normal" }
                });

            migrationBuilder.InsertData(
                table: "BuildReasons",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 4, "The build was started for the trigger TriggerType.ContinuousIntegration", "individualCI" },
                    { 1, "The build was started for the trigger TriggerType.BatchedContinuousIntegration", "batchedCI" },
                    { 12, " The build was created by a user", "validateShelveset" },
                    { 11, "The build was created by a user", "userCreated" },
                    { 10, "The build was triggered for retention policy purposes", "triggered" },
                    { 9, "The build was started for the trigger TriggerType.ScheduleForced", "scheduleForced" },
                    { 8, "The build was started for the trigger TriggerType.Schedule", "schedule" },
                    { 2, "The build was started when another build completed", "buildCompletion" },
                    { 6, "No reason. This value should not be used", "none" },
                    { 5, "The build was started manually", "manual" },
                    { 3, "The build was started for the trigger ContinuousIntegrationType.Gated", "checkInShelveset" },
                    { 7, "The build was started by a pull request. Added in resource version 3", "pullRequest" }
                });

            migrationBuilder.InsertData(
                table: "BuildResults",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 2, "The build completed unsuccessfully", "failed" },
                    { 5, "The build completed successfully", "succeeded" },
                    { 4, "The build completed compilation successfully but had other errors", "partiallySucceeded" },
                    { 3, " No result", "none" },
                    { 1, "The build was canceled before starting", "canceled" }
                });

            migrationBuilder.InsertData(
                table: "BuildStatuses",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 6, "The build is inactive in the queue", "postponed" },
                    { 4, "No status", "none" },
                    { 3, "The build is currently in progress", "inProgress" },
                    { 2, " The build has completed", "completed" },
                    { 1, "The build is cancelling", "cancelling" },
                    { 5, "The build has not yet started", "notStarted" }
                });

            migrationBuilder.InsertData(
                table: "BuildTriggerTypes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 6, "Manual builds only", "none" },
                    { 8, "A build should be started on a specified schedule whether or not changesets exist", "schedule" },
                    { 5, "A validation build should be started for each check-in", "gatedCheckIn" },
                    { 7, "A build should be triggered when a GitHub pull request is created or updated. Added in resource version 3", "pullRequest" },
                    { 3, "A build should be triggered when another build completes", "buildCompletion" },
                    { 2, "A validation build should be started for each batch of check-ins", "batchedGatedCheckIn" },
                    { 1, "A build should be started for multiple changesets at a time at a specified interval", "batchedContinuousIntegration" },
                    { 4, "A build should be started for each changeset", "continuousIntegration" }
                });

            migrationBuilder.InsertData(
                table: "ProjectStates",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 6, "Project is completely created and ready to use", "wellFormed" },
                    { 5, "Project has not been changed", "unchanged" },
                    { 4, "Project is in the process of being created", "new" },
                    { 3, "Project is in the process of being deleted", "deleting" },
                    { 2, "Project has been deleted", "deleted" },
                    { 1, "Project has been queued for creation, but the process has not yet started", "createPending" }
                });

            migrationBuilder.InsertData(
                table: "ProjectVisibilities",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 2, "public project", "public" },
                    { 1, "private project", "private" }
                });

            migrationBuilder.InsertData(
                table: "TaskAgentPools",
                columns: new[] { "Id", "IsHosted", "Name" },
                values: new object[] { 1, true, "Hosted Ubuntu 1604" });

            migrationBuilder.InsertData(
                table: "TaskResults",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 5, "succeeded", "succeeded" },
                    { 4, "skipped", "skipped" },
                    { 3, "failed", "failed" },
                    { 2, "canceled", "canceled" },
                    { 1, "abandoned", "abandoned" },
                    { 6, "succeededWithIssues", "succeededWithIssues" }
                });

            migrationBuilder.InsertData(
                table: "TestResultFailureTypes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 4, "Unknown", "unknown" },
                    { 3, "Regression", "regression" },
                    { 5, "None", "none" },
                    { 2, "NewIssue", "newIssue" },
                    { 1, "KnownIssue", "knownIssue" }
                });

            migrationBuilder.InsertData(
                table: "TestResultGroupTypes",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 5, "Hierarchy type of test result", "rerun" },
                    { 1, "Hierarchy type of test result", "dataDriven" },
                    { 2, "Unknown hierarchy type", "generic" },
                    { 3, "Leaf node of test result", "none" },
                    { 4, "Hierarchy type of test result", "orderedTest" }
                });

            migrationBuilder.InsertData(
                table: "TestRunStates",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 7, "NeedsInvestigation", "needsInvestigation" },
                    { 6, "Aborted", "aborted" },
                    { 5, "Waiting", "waiting" },
                    { 3, "InProgress", "inProgress" },
                    { 4, "Completed", "completed" },
                    { 1, "Unspecified", "unspecified" },
                    { 2, "NotStarted", "notStarted" }
                });

            migrationBuilder.InsertData(
                table: "TestRunSubstates",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 4, "Run state when cancellation is in Progress", "cancellationInProgress" },
                    { 5, "Run state while Creating Environment", "creatingEnvironment" },
                    { 6, "Run with noState", "none" },
                    { 7, "Run state while Pending Analysis", "pendingAnalysis" },
                    { 3, "Run state while Creating Environment", "canceledByUser" },
                    { 9, "Run state when run has timedOut", "timedOut" },
                    { 1, "Run state when it is Aborted By the System", "abortedBySystem" },
                    { 8, "Run state while Running Tests", "runningTests" },
                    { 2, "Run state after being Analysed", "analyzed" }
                });

            migrationBuilder.InsertData(
                table: "TimelineRecordStates",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "completed", "completed" },
                    { 2, "inProgress", "inProgress" },
                    { 3, "pending", "pending" }
                });

            migrationBuilder.InsertData(
                table: "AgentPoolQueues",
                columns: new[] { "Id", "Name", "PoolId" },
                values: new object[] { 1, "Hosted Ubuntu 1604", 1 });

            migrationBuilder.InsertData(
                table: "Projects",
                columns: new[] { "Id", "Abbreviation", "Description", "LastUpdateTime", "Name", "OrganizationName", "Revision", "StateId", "TeamId", "VisibilityId" },
                values: new object[] { new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), null, "test project", null, "test", "tauke1", 0, 6, null, 2 });

            migrationBuilder.InsertData(
                table: "Definitions",
                columns: new[] { "Id", "AuthoredBy", "BadgeEnabled", "BuildNumberFormat", "Comment", "CreatedDate", "Description", "DraftOfDefinitionId", "DropLocation", "JobAuthorizationScopeId", "JobCancelTimeoutInMinutes", "JobTimeoutInMinutes", "Name", "Path", "ProjectId", "QualityId", "QueueId", "QueueStatusId", "Revision", "TypeId", "YamlFileName" },
                values: new object[] { 1, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), true, null, "test", new DateTime(2019, 9, 2, 18, 44, 3, 780, DateTimeKind.Local).AddTicks(2794), "test", null, null, 1, 10, 15, "[P][Master][08.30][CI]", "/08.30", new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), 1, 1, 1, 0, 1, "/azure-pipelines.yml" });

            migrationBuilder.InsertData(
                table: "GitRepositories",
                columns: new[] { "Id", "DefaultBranch", "IsFork", "Name", "ParentRepositoryId", "ProjectId", "RemoteUrl", "Size", "SshUrl", "Type", "WebUrl" },
                values: new object[] { new Guid("3f4d02b7-b6e6-40fd-ba50-10cf3b8e6b54"), "refs/heads/master", false, "test", null, new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), null, 27373, "git@ssh.dev.azure.com:v3/tauke1/test/test", "TfsGit", "https://dev.azure.com/tauke1/test/_git/test" });

            migrationBuilder.InsertData(
                table: "TestPlans",
                columns: new[] { "Id", "AreaPath", "BuildDefinitionId", "BuildId", "Description", "EndDate", "Iteration", "Name", "OwnerUserId", "PreviousBuildId", "ProjectId", "Revision", "RootSuiteId", "StartDate", "State" },
                values: new object[] { 1, "test", null, null, "test", new DateTime(2019, 9, 3, 19, 23, 25, 133, DateTimeKind.Local), "test\\\\Sprint 1", "test Team_Stories_Sprint 1", new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), null, new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), 0, null, new DateTime(2019, 8, 27, 19, 23, 25, 133, DateTimeKind.Local), "Active" });

            migrationBuilder.InsertData(
                table: "BuildRepository",
                columns: new[] { "Id", "BuildDefinitionId", "CheckoutSubmodules", "Clean", "DefaultBranch", "GitRepositoryId", "RootFolder" },
                values: new object[] { 1, 1, false, null, "refs/heads/release-08.29", new Guid("3f4d02b7-b6e6-40fd-ba50-10cf3b8e6b54"), null });

            migrationBuilder.InsertData(
                table: "BuildTriggers",
                columns: new[] { "Id", "BuildDefinitionId", "TriggerTypeId" },
                values: new object[] { 1, 1, 4 });

            migrationBuilder.InsertData(
                table: "DefinitionProperties",
                columns: new[] { "Id", "BuildDefinitionId", "Key", "Value" },
                values: new object[] { 1L, 1, "testProp", "testVal" });

            migrationBuilder.InsertData(
                table: "TestRuns",
                columns: new[] { "Id", "BuildConfigurationId", "BuildId", "Comment", "CompletedDate", "Controller", "CreatedDate", "DropLocation", "DueDate", "ErrorMessage", "IncompleteTests", "IsAutomated", "Iteration", "LastUpdatedByUserId", "Name", "NotApplicableTests", "OwnerUserId", "PassedTests", "Phase", "PostProcessState", "ProjectId", "Revision", "StartedDate", "StateId", "SubstateId", "TestMessageLogId", "TestPlanId", "TotalTests", "UnanalyzedTests" },
                values: new object[] { 1, null, null, "test run", new DateTime(2019, 8, 29, 13, 10, 8, 553, DateTimeKind.Local), null, new DateTime(2019, 8, 29, 13, 9, 53, 893, DateTimeKind.Local), null, null, null, 0, false, "test", null, "14 : test (Manual)", 0, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), 1, null, "Complete", new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), 0, new DateTime(2019, 8, 29, 13, 9, 53, 0, DateTimeKind.Local), 4, null, null, 1, 1, 0 });

            migrationBuilder.InsertData(
                table: "Builds",
                columns: new[] { "Id", "BuildDefinitionId", "BuildNumber", "BuildNumberRevision", "BuildRepositoryId", "FinishTime", "KeepForever", "LastChangedBy", "LastChangedDate", "QueueId", "QueuePriorityId", "QueueTime", "ReasonId", "ResultId", "RetainedByRelease", "SourceBranch", "SourceVersion", "StartDate", "StatusId", "TriggeredByBuildId" },
                values: new object[,]
                {
                    { 1, 1, "20190829.1", 0, 1, new DateTime(2019, 8, 29, 15, 57, 43, 760, DateTimeKind.Local).AddTicks(431), false, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), new DateTime(2019, 8, 29, 15, 57, 44, 103, DateTimeKind.Local), 1, 5, new DateTime(2019, 8, 29, 15, 57, 16, 824, DateTimeKind.Local).AddTicks(1665), 5, 5, false, "refs/heads/release-08.29", "b43bd6a1785759a7bae16a37a956f9389dcc73a4", new DateTime(2019, 8, 29, 15, 57, 24, 595, DateTimeKind.Local).AddTicks(8544), 2, null },
                    { 2, 1, "20190829.2", 0, 1, new DateTime(2019, 8, 29, 15, 57, 43, 760, DateTimeKind.Local).AddTicks(431), false, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), new DateTime(2019, 8, 29, 15, 57, 44, 103, DateTimeKind.Local), 1, 5, new DateTime(2019, 8, 29, 15, 57, 16, 824, DateTimeKind.Local).AddTicks(1665), 5, 2, false, "refs/heads/release-08.29", "b43bd6a1785759a7bae16a37a956f9389dcc73a4", new DateTime(2019, 8, 29, 15, 57, 24, 595, DateTimeKind.Local).AddTicks(8544), 2, null }
                });

            migrationBuilder.InsertData(
                table: "TestResults",
                columns: new[] { "Id", "AfnStripId", "AutomatedTestId", "AutomatedTestName", "AutomatedTestStorage", "AutomatedTestType", "AutomatedTestTypeId", "BuildId", "Comment", "CompletedDate", "ComputerName", "CreatedDate", "DurationInMs", "ErrorMessage", "FailureTypeId", "GroupTypeId", "LastUpdatedByUserId", "LastUpdatedDate", "Outcome", "Priority", "ProjectId", "ResetCount", "Revision", "RunByUserId", "StackTrace", "StartDate", "TestCaseId", "TestRunId", "TestRunStateId", "TestSuiteId" },
                values: new object[] { 1, null, null, null, null, null, null, null, "test passed! :)", new DateTime(2019, 8, 29, 13, 10, 10, 20, DateTimeKind.Local), null, new DateTime(2019, 8, 29, 13, 9, 53, 983, DateTimeKind.Local), 13547m, null, 5, 3, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), new DateTime(2019, 8, 29, 13, 10, 8, 553, DateTimeKind.Local), "Passed", 2, new Guid("39d7fa96-3cfd-4470-9a12-23f479bff4ec"), null, 0, new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f"), null, new DateTime(2019, 8, 29, 13, 9, 56, 473, DateTimeKind.Local), null, 1, 4, null });

            migrationBuilder.InsertData(
                table: "TestRunCustomFields",
                columns: new[] { "Id", "FieldName", "TestRunId", "Value" },
                values: new object[,]
                {
                    { 1, "LogStoreContainerState", 1, "0" },
                    { 2, "LogStoreContainerSize", 1, "0" }
                });

            migrationBuilder.InsertData(
                table: "TestRunStatistics",
                columns: new[] { "Id", "Count", "State", "TestRunId" },
                values: new object[] { 1, 1, "completed", 1 });

            migrationBuilder.InsertData(
                table: "TestRunTags",
                columns: new[] { "Id", "Tag", "TestRunId" },
                values: new object[,]
                {
                    { 1, "testing", 1 },
                    { 2, "development", 1 }
                });

            migrationBuilder.InsertData(
                table: "BuildIssues",
                columns: new[] { "Id", "BuildId", "Category", "Data", "IssueTypeId", "Message" },
                values: new object[] { 1, 1, "General", @"{
                        'type': 'error',
                        'logFileLineNumber': '20'
                    }", 1, "PowerShell exited with code '1'." });

            migrationBuilder.InsertData(
                table: "BuildLogs",
                columns: new[] { "Id", "BuildId", "CreatedOn", "Data", "LastChangedOn", "LinesCount", "Type" },
                values: new object[,]
                {
                    { 21, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:41.0570305Z ##[section]Starting: Checkout
                2019-08-29T09:57:41.0571897Z ==============================================================================
                2019-08-29T09:57:41.0571993Z Task         : Get sources
                2019-08-29T09:57:41.0572027Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                2019-08-29T09:57:41.0572059Z Version      : 1.0.0
                2019-08-29T09:57:41.0572131Z Author       : Microsoft
                2019-08-29T09:57:41.0572164Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                2019-08-29T09:57:41.0572195Z ==============================================================================
                2019-08-29T09:57:41.4718178Z Cleaning any cached credential from repository: test (Git)
                2019-08-29T09:57:41.4759342Z ##[section]Finishing: Checkout", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 11, "Container" },
                    { 20, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:40.9042245Z ##[section]Starting: Run a multi-line script
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
                2019-08-29T09:57:41.0560668Z ##[section]Finishing: Run a multi-line script", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 15, "Container" },
                    { 19, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:40.1795377Z ##[section]Starting: Get Setted variables
                2019-08-29T09:57:40.1798679Z ==============================================================================
                2019-08-29T09:57:40.1798741Z Task         : PowerShell
                2019-08-29T09:57:40.1798776Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                2019-08-29T09:57:40.1798812Z Version      : 2.151.2
                2019-08-29T09:57:40.1798892Z Author       : Microsoft Corporation
                2019-08-29T09:57:40.1798928Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                2019-08-29T09:57:40.1798962Z ==============================================================================
                2019-08-29T09:57:40.3135221Z Generating script.
                2019-08-29T09:57:40.3159305Z ========================== Starting Command Output ===========================
                2019-08-29T09:57:40.3190581Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1'
                2019-08-29T09:57:40.8535753Z Build.DropRoot = \\bies-pbi\release-08.29\459
                2019-08-29T09:57:40.9035381Z ##[section]Finishing: Get Setted variables", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 14, "Container" },
                    { 18, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:34.5813648Z ##[section]Starting: Set Build Variables
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
                2019-08-26T13:06:07.0163775Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/4a3172dc-fbee-4250-a98d-6fceb3423ee8.ps1'
                2019-08-26T13:06:11.9822065Z \\bies-pbi : The term '\\bies-pbi' is not recognized as the name of a cmdlet, function, script file, or operable program.
                2019-08-26T13:06:11.9827466Z Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
                2019-08-26T13:06:11.9830345Z At /home/vsts/work/_temp/4a3172dc-fbee-4250-a98d-6fceb3423ee8.ps1:4 char:1
                2019-08-26T13:06:11.9832663Z + \\bies-pbi = '$env:BUILD_DROPROOT\\$env:BUILD_SOURCEBRANCHNAME\\$env: ...
                2019-08-26T13:06:11.9834825Z + ~~~~~~~~~~
                2019-08-26T13:06:11.9837569Z + CategoryInfo          : ObjectNotFound: (\\bies-pbi:String) [], ParentContainsErrorRecordException
                2019-08-26T13:06:11.9839722Z + FullyQualifiedErrorId : CommandNotFoundException
                2019-08-26T13:06:11.9841537Z  
                2019-08-26T13:06:12.0152544Z ##[error]PowerShell exited with code '1'.
                2019-08-26T13:06:12.0165982Z ##[section]Finishing: Set Build Variables", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 21, "Container" },
                    { 17, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:32.4928850Z ##[section]Starting: Run a one-line script
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
                2019-08-29T09:57:34.5807302Z ##[section]Finishing: Run a one-line script", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 16, "Container" },
                    { 16, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:28.9058078Z ##[section]Starting: Checkout
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
                2019-08-29T09:57:31.4276986Z ##[command]git init '/home/vsts/work/1/s'
                2019-08-29T09:57:31.4622774Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                2019-08-29T09:57:31.4670557Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                2019-08-29T09:57:31.4868228Z ##[command]git config gc.auto 0
                2019-08-29T09:57:31.4941959Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                2019-08-29T09:57:32.3121231Z ##[command]git config --get-all http.proxy
                2019-08-29T09:57:32.3125439Z ##[command]git -c http.extraheader='AUTHORIZATION: bearer ***' fetch --force --tags --prune --progress --no-recurse-submodules origin
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
                2019-08-29T09:57:32.4843337Z Note: switching to 'b43bd6a1785759a7bae16a37a956f9389dcc73a4'.
                2019-08-29T09:57:32.4843383Z 
                2019-08-29T09:57:32.4843627Z You are in 'detached HEAD' state. You can look around, make experimental
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
                2019-08-29T09:57:32.4913488Z ##[section]Finishing: Checkout", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 404, "Container" },
                    { 15, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:27.3044562Z ##[section]Starting: Initialize job
                2019-08-29T09:57:27.3044795Z Current agent version: '2.155.1'
                2019-08-29T09:57:27.3220420Z Prepare build directory.
                2019-08-29T09:57:27.3498879Z Set build variables.
                2019-08-29T09:57:27.3546410Z Download all required tasks.
                2019-08-29T09:57:27.3709101Z Downloading task: CmdLine
                2019-08-29T09:57:27.9033181Z Downloading task: PowerShell
                2019-08-29T09:57:28.8421829Z Start tracking orphan processes.
                2019-08-29T09:57:28.8593407Z ##[section]Finishing: Initialize job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 10, "Container" },
                    { 14, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:17.9296049Z ##[section]Starting: Prepare job Job
                2019-08-29T09:57:17.9395121Z ContinueOnError: False
                2019-08-29T09:57:17.9395121Z TimeoutInMinutes: 60
                2019-08-29T09:57:17.9395121Z CancelTimeoutInMinutes: 5
                2019-08-29T09:57:17.9395121Z Expand:
                2019-08-29T09:57:17.9395121Z   ########## System Pipeline Decorator(s) ##########

                2019-08-29T09:57:17.9395121Z   Begin evaluating template 'system-pre-steps.yml'
                Evaluating: eq('true', variables['system.debugContext'])
                Expanded: eq('true', Null)
                Result: False
                Evaluating: resources['repositories']['self']
                Expanded: Object
                Result: True
                Evaluating: not(containsValue(job['steps']['*']['task']['id'], '6d15af64-176c-496d-b583-fd2ae21d4df4'))
                Expanded: not(containsValue(Object, '6d15af64-176c-496d-b583-fd2ae21d4df4'))
                Result: True
                Evaluating: resources['repositories']['self']['checkoutOptions']
                Result: Object
                Finished evaluating template 'system-pre-steps.yml'
                ********************************************************************************
                Template and static variable resolution complete. Final runtime YAML document:
                steps:
                - task: 6d15af64-176c-496d-b583-fd2ae21d4df4@1
                    inputs:
                    repository: self


                2019-08-29T09:57:17.9445129Z   MaxConcurrency: 0
                2019-08-29T09:57:17.9495137Z ##[section]Finishing: Prepare job Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 31, "Container" },
                    { 13, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"Begin evaluating template '/azure-pipelines.yml'
                Begin transform: variables
                Evaluating: value
                Result: Object
                Evaluating: pair['key']
                Result: 'Build.DropRoot'
                Evaluating: pair['value']
                Result: '\\bies-pbi'
                End transform: variables
                Begin transform: trigger
                Evaluating: value
                Result: Object
                End transform: trigger
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('script', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Run a one-line script'
                Result: Object
                Evaluating: value['script']
                Result: 'echo Hello, world!'
                Evaluating: value['failOnStderr']
                Expanded: Null
                Result: False
                Evaluating: value['workingDirectory']
                Expanded: Null
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('powershell', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Set Build Variables'
                Result: Object
                Evaluating: value['powershell']
                Result: '$dropRoot = '$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID'
                Write-Host 'dropRoot  is $dropRoot'
                Write-Host '##vso[task.setvariable variable=Build.DropRoot]$dropRoot'
                '
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('powershell', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('displayName', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('powershell', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Get Setted variables'
                Result: Object
                Evaluating: value['powershell']
                Result: 'Write-Host 'Build.DropRoot = $env:BUILD_DROPROOT'
                '
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('powershell', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('displayName', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('script', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Run a multi-line script'
                Result: Object
                Evaluating: value['script']
                Result: 'echo Add other tasks to build, test, and deploy your project.
                echo See https://aka.ms/yaml
                '
                Evaluating: value['failOnStderr']
                Expanded: Null
                Result: False
                Evaluating: value['workingDirectory']
                Expanded: Null
                Result: False
                End transform: step
                Begin transform: pipeline
                Evaluating: value
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('variables', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'variables'
                Evaluating: pair['value']
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('trigger', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'trigger'
                Evaluating: pair['value']
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('pool', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('steps', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('variables', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('trigger', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('pool', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'pool'
                Evaluating: pair['value']
                Result: Object
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('steps', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'steps'
                Evaluating: pair['value']
                Result: Object
                End transform: pipeline
                Finished evaluating template '/azure-pipelines.yml'
                ********************************************************************************
                Template and static variable resolution complete. Final runtime YAML document:
                variables:
                - name: Build.DropRoot
                    value: '\\bies-pbi'
                trigger:
                    branches:
                    include:
                    - '*'
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
                            $dropRoot = '$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID'

                            Write-Host 'dropRoot  is $dropRoot'

                            Write-Host '##vso[task.setvariable variable=Build.DropRoot]$dropRoot'
                    - task: PowerShell@2
                        displayName: Get Setted variables
                        inputs:
                        targetType: inline
                        script: >
                            Write-Host 'Build.DropRoot = $env:BUILD_DROPROOT'
                    - task: CmdLine@2
                        displayName: Run a multi-line script
                        inputs:
                        script: >
                            echo Add other tasks to build, test, and deploy your project.

                            echo See https://aka.ms/yaml", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 211, "Container" },
                    { 24, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), "Set build status for commit b43bd6.", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 2, "Container" },
                    { 22, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:41.4828452Z ##[section]Starting: Finalize Job
                2019-08-29T09:57:41.4871844Z Start cleaning up orphan processes.
                2019-08-29T09:57:41.4965521Z ##[section]Finishing: Finalize Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 4, "Container" },
                    { 12, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), "Set build status for commit b43bd6.", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 2, "Container" },
                    { 10, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:41.4828452Z ##[section]Starting: Finalize Job
                2019-08-29T09:57:41.4871844Z Start cleaning up orphan processes.
                2019-08-29T09:57:41.4965521Z ##[section]Finishing: Finalize Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 4, "Container" },
                    { 9, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:41.0570305Z ##[section]Starting: Checkout
                2019-08-29T09:57:41.0571897Z ==============================================================================
                2019-08-29T09:57:41.0571993Z Task         : Get sources
                2019-08-29T09:57:41.0572027Z Description  : Get sources from a repository. Supports Git, TfsVC, and SVN repositories.
                2019-08-29T09:57:41.0572059Z Version      : 1.0.0
                2019-08-29T09:57:41.0572131Z Author       : Microsoft
                2019-08-29T09:57:41.0572164Z Help         : [More Information](https://go.microsoft.com/fwlink/?LinkId=798199)
                2019-08-29T09:57:41.0572195Z ==============================================================================
                2019-08-29T09:57:41.4718178Z Cleaning any cached credential from repository: test (Git)
                2019-08-29T09:57:41.4759342Z ##[section]Finishing: Checkout", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 11, "Container" },
                    { 8, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:40.9042245Z ##[section]Starting: Run a multi-line script
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
                2019-08-29T09:57:41.0560668Z ##[section]Finishing: Run a multi-line script", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 15, "Container" },
                    { 7, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:40.1795377Z ##[section]Starting: Get Setted variables
                2019-08-29T09:57:40.1798679Z ==============================================================================
                2019-08-29T09:57:40.1798741Z Task         : PowerShell
                2019-08-29T09:57:40.1798776Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                2019-08-29T09:57:40.1798812Z Version      : 2.151.2
                2019-08-29T09:57:40.1798892Z Author       : Microsoft Corporation
                2019-08-29T09:57:40.1798928Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                2019-08-29T09:57:40.1798962Z ==============================================================================
                2019-08-29T09:57:40.3135221Z Generating script.
                2019-08-29T09:57:40.3159305Z ========================== Starting Command Output ===========================
                2019-08-29T09:57:40.3190581Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1'
                2019-08-29T09:57:40.8535753Z Build.DropRoot = \\bies-pbi\release-08.29\459
                2019-08-29T09:57:40.9035381Z ##[section]Finishing: Get Setted variables", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 14, "Container" },
                    { 6, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:34.5813648Z ##[section]Starting: Set Build Variables
                2019-08-29T09:57:34.5816676Z ==============================================================================
                2019-08-29T09:57:34.5816780Z Task         : PowerShell
                2019-08-29T09:57:34.5816814Z Description  : Run a PowerShell script on Linux, macOS, or Windows
                2019-08-29T09:57:34.5816847Z Version      : 2.151.2
                2019-08-29T09:57:34.5816921Z Author       : Microsoft Corporation
                2019-08-29T09:57:34.5816956Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/utility/powershell
                2019-08-29T09:57:34.5816989Z ==============================================================================
                2019-08-29T09:57:34.7196982Z Generating script.
                2019-08-29T09:57:34.7227968Z ========================== Starting Command Output ===========================
                2019-08-29T09:57:34.7261413Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1'
                2019-08-29T09:57:40.0409308Z dropRoot  is \\bies-pbi\release-08.29\459
                            2019-08-29T09:57:40.1789175Z ##[section]Finishing: Set Build Variables", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 14, "Container" },
                    { 5, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:32.4928850Z ##[section]Starting: Run a one-line script
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
                2019-08-29T09:57:34.5807302Z ##[section]Finishing: Run a one-line script", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 16, "Container" },
                    { 4, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:28.9058078Z ##[section]Starting: Checkout
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
                2019-08-29T09:57:31.4276986Z ##[command]git init '/home/vsts/work/1/s'
                2019-08-29T09:57:31.4622774Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                2019-08-29T09:57:31.4670557Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                2019-08-29T09:57:31.4868228Z ##[command]git config gc.auto 0
                2019-08-29T09:57:31.4941959Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                2019-08-29T09:57:32.3121231Z ##[command]git config --get-all http.proxy
                2019-08-29T09:57:32.3125439Z ##[command]git -c http.extraheader='AUTHORIZATION: bearer ***' fetch --force --tags --prune --progress --no-recurse-submodules origin
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
                2019-08-29T09:57:32.4843337Z Note: switching to 'b43bd6a1785759a7bae16a37a956f9389dcc73a4'.
                2019-08-29T09:57:32.4843383Z 
                2019-08-29T09:57:32.4843627Z You are in 'detached HEAD' state. You can look around, make experimental
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
                2019-08-29T09:57:32.4913488Z ##[section]Finishing: Checkout", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 404, "Container" },
                    { 3, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:27.3044562Z ##[section]Starting: Initialize job
                2019-08-29T09:57:27.3044795Z Current agent version: '2.155.1'
                2019-08-29T09:57:27.3220420Z Prepare build directory.
                2019-08-29T09:57:27.3498879Z Set build variables.
                2019-08-29T09:57:27.3546410Z Download all required tasks.
                2019-08-29T09:57:27.3709101Z Downloading task: CmdLine
                2019-08-29T09:57:27.9033181Z Downloading task: PowerShell
                2019-08-29T09:57:28.8421829Z Start tracking orphan processes.
                2019-08-29T09:57:28.8593407Z ##[section]Finishing: Initialize job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 10, "Container" },
                    { 2, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:17.9296049Z ##[section]Starting: Prepare job Job
                2019-08-29T09:57:17.9395121Z ContinueOnError: False
                2019-08-29T09:57:17.9395121Z TimeoutInMinutes: 60
                2019-08-29T09:57:17.9395121Z CancelTimeoutInMinutes: 5
                2019-08-29T09:57:17.9395121Z Expand:
                2019-08-29T09:57:17.9395121Z   ########## System Pipeline Decorator(s) ##########

                2019-08-29T09:57:17.9395121Z   Begin evaluating template 'system-pre-steps.yml'
                Evaluating: eq('true', variables['system.debugContext'])
                Expanded: eq('true', Null)
                Result: False
                Evaluating: resources['repositories']['self']
                Expanded: Object
                Result: True
                Evaluating: not(containsValue(job['steps']['*']['task']['id'], '6d15af64-176c-496d-b583-fd2ae21d4df4'))
                Expanded: not(containsValue(Object, '6d15af64-176c-496d-b583-fd2ae21d4df4'))
                Result: True
                Evaluating: resources['repositories']['self']['checkoutOptions']
                Result: Object
                Finished evaluating template 'system-pre-steps.yml'
                ********************************************************************************
                Template and static variable resolution complete. Final runtime YAML document:
                steps:
                - task: 6d15af64-176c-496d-b583-fd2ae21d4df4@1
                    inputs:
                    repository: self


                2019-08-29T09:57:17.9445129Z   MaxConcurrency: 0
                2019-08-29T09:57:17.9495137Z ##[section]Finishing: Prepare job Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 31, "Container" },
                    { 1, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"Begin evaluating template '/azure-pipelines.yml'
                Begin transform: variables
                Evaluating: value
                Result: Object
                Evaluating: pair['key']
                Result: 'Build.DropRoot'
                Evaluating: pair['value']
                Result: '\\bies-pbi'
                End transform: variables
                Begin transform: trigger
                Evaluating: value
                Result: Object
                End transform: trigger
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('script', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Run a one-line script'
                Result: Object
                Evaluating: value['script']
                Result: 'echo Hello, world!'
                Evaluating: value['failOnStderr']
                Expanded: Null
                Result: False
                Evaluating: value['workingDirectory']
                Expanded: Null
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('powershell', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Set Build Variables'
                Result: Object
                Evaluating: value['powershell']
                Result: '$dropRoot = '$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID'
                Write-Host 'dropRoot  is $dropRoot'
                Write-Host '##vso[task.setvariable variable=Build.DropRoot]$dropRoot'
                '
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('powershell', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('displayName', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('powershell', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Get Setted variables'
                Result: Object
                Evaluating: value['powershell']
                Result: 'Write-Host 'Build.DropRoot = $env:BUILD_DROPROOT'
                '
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('powershell', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                Evaluating: in(pair['key'], 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Expanded: in('displayName', 'errorActionPreference', 'failOnStderr', 'ignoreLASTEXITCODE', 'workingDirectory')
                Result: False
                End transform: step
                Begin transform: step
                Evaluating: transform('stepToTaskBaseProperties', value)
                Evaluating: arg0
                Result: Object
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('script', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: False
                Evaluating: in(pair['key'], 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Expanded: in('displayName', 'condition', 'continueOnError', 'displayName', 'enabled', 'env', 'name', 'timeoutInMinutes')
                Result: True
                Evaluating: pair['key']
                Result: 'displayName'
                Evaluating: pair['value']
                Result: 'Run a multi-line script'
                Result: Object
                Evaluating: value['script']
                Result: 'echo Add other tasks to build, test, and deploy your project.
                echo See https://aka.ms/yaml
                '
                Evaluating: value['failOnStderr']
                Expanded: Null
                Result: False
                Evaluating: value['workingDirectory']
                Expanded: Null
                Result: False
                End transform: step
                Begin transform: pipeline
                Evaluating: value
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('variables', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'variables'
                Evaluating: pair['value']
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('trigger', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'trigger'
                Evaluating: pair['value']
                Result: Object
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('pool', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: notIn(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: notIn('steps', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: value
                Result: Object
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('variables', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('trigger', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: False
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('pool', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'pool'
                Evaluating: pair['value']
                Result: Object
                Evaluating: in(pair['key'], 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Expanded: in('steps', 'strategy', 'continueOnError', 'pool', 'container', 'services', 'workspace', 'steps')
                Result: True
                Evaluating: pair['key']
                Result: 'steps'
                Evaluating: pair['value']
                Result: Object
                End transform: pipeline
                Finished evaluating template '/azure-pipelines.yml'
                ********************************************************************************
                Template and static variable resolution complete. Final runtime YAML document:
                variables:
                - name: Build.DropRoot
                    value: '\\bies-pbi'
                trigger:
                    branches:
                    include:
                    - '*'
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
                            $dropRoot = '$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID'

                            Write-Host 'dropRoot  is $dropRoot'

                            Write-Host '##vso[task.setvariable variable=Build.DropRoot]$dropRoot'
                    - task: PowerShell@2
                        displayName: Get Setted variables
                        inputs:
                        targetType: inline
                        script: >
                            Write-Host 'Build.DropRoot = $env:BUILD_DROPROOT'
                    - task: CmdLine@2
                        displayName: Run a multi-line script
                        inputs:
                        script: >
                            echo Add other tasks to build, test, and deploy your project.

                            echo See https://aka.ms/yaml", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 211, "Container" },
                    { 11, 1, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:27.0856966Z ##[section]Starting: Job
                2019-08-29T09:57:27.3044596Z ##[section]Starting: Initialize job
                2019-08-29T09:57:27.3044801Z Current agent version: '2.155.1'
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
                2019-08-29T09:57:31.4277125Z ##[command]git init '/home/vsts/work/1/s'
                2019-08-29T09:57:31.4622887Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                2019-08-29T09:57:31.4670652Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                2019-08-29T09:57:31.4868251Z ##[command]git config gc.auto 0
                2019-08-29T09:57:31.4941984Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                2019-08-29T09:57:32.3121276Z ##[command]git config --get-all http.proxy
                2019-08-29T09:57:32.3125454Z ##[command]git -c http.extraheader='AUTHORIZATION: bearer ***' fetch --force --tags --prune --progress --no-recurse-submodules origin
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
                2019-08-29T09:57:32.4843349Z Note: switching to 'b43bd6a1785759a7bae16a37a956f9389dcc73a4'.
                2019-08-29T09:57:32.4843388Z 
                2019-08-29T09:57:32.4843635Z You are in 'detached HEAD' state. You can look around, make experimental
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
                2019-08-29T09:57:34.7261463Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1'
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
                2019-08-29T09:57:40.3190603Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1'
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
                2019-08-29T09:57:41.5020909Z ##[section]Finishing: Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 483, "Container" },
                    { 23, 2, new DateTime(2019, 8, 29, 15, 57, 16, 987, DateTimeKind.Local), @"2019-08-29T09:57:27.0856966Z ##[section]Starting: Job
                2019-08-29T09:57:27.3044596Z ##[section]Starting: Initialize job
                2019-08-29T09:57:27.3044801Z Current agent version: '2.155.1'
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
                2019-08-29T09:57:31.4277125Z ##[command]git init '/home/vsts/work/1/s'
                2019-08-29T09:57:31.4622887Z Initialized empty Git repository in /home/vsts/work/1/s/.git/
                2019-08-29T09:57:31.4670652Z ##[command]git remote add origin https://tauke1@dev.azure.com/tauke1/test/_git/test
                2019-08-29T09:57:31.4868251Z ##[command]git config gc.auto 0
                2019-08-29T09:57:31.4941984Z ##[command]git config --get-all http.https://tauke1@dev.azure.com/tauke1/test/_git/test.extraheader
                2019-08-29T09:57:32.3121276Z ##[command]git config --get-all http.proxy
                2019-08-29T09:57:32.3125454Z ##[command]git -c http.extraheader='AUTHORIZATION: bearer ***' fetch --force --tags --prune --progress --no-recurse-submodules origin
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
                2019-08-29T09:57:32.4843349Z Note: switching to 'b43bd6a1785759a7bae16a37a956f9389dcc73a4'.
                2019-08-29T09:57:32.4843388Z 
                2019-08-29T09:57:32.4843635Z You are in 'detached HEAD' state. You can look around, make experimental
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
                2019-08-29T09:57:34.7261463Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/fb7d28b2-648c-4f8c-8723-b79648849679.ps1'
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
                2019-08-29T09:57:40.3190603Z [command]/usr/bin/pwsh -NoLogo -NoProfile -NonInteractive -Command . '/home/vsts/work/_temp/b9a7f70c-4c84-489d-a726-c8bfbbf4de40.ps1'
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
                2019-08-29T09:57:41.5020909Z ##[section]Finishing: Job", new DateTime(2019, 8, 29, 15, 57, 17, 0, DateTimeKind.Local), 483, "Container" }
                });

            migrationBuilder.InsertData(
                table: "Timelines",
                columns: new[] { "Id", "BuildId", "ChangeId", "LastChangedOn", "lastChangedByUserId" },
                values: new object[,]
                {
                    { new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), 1, 20, new DateTime(2019, 8, 29, 15, 57, 44, 87, DateTimeKind.Local), new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f") },
                    { new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), 2, 20, new DateTime(2019, 8, 29, 15, 57, 44, 87, DateTimeKind.Local), new Guid("9c73e7d2-3928-4b90-94cb-6f2cef4f2c8f") }
                });

            migrationBuilder.InsertData(
                table: "TimelineRecords",
                columns: new[] { "Id", "Attempt", "ChangeId", "CurrentOperation", "DetailsId", "ErrorCount", "FinishTime", "Identifier", "LastModified", "LogId", "Name", "Order", "ParentId", "PercentComplete", "ResultCode", "ResultId", "StartTime", "StateId", "TaskId", "TimelineId", "Type", "WarningCount", "WorkerName" },
                values: new object[,]
                {
                    { new Guid("96ac2280-8cb4-5df5-99de-dd2da759617d"), 1, 6, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 43, 800, DateTimeKind.Local), "__default", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, "__default", 1, null, null, null, 2, new DateTime(2019, 8, 29, 15, 57, 27, 76, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Stage", 0, null },
                    { new Guid("a1c686c1-7ed5-4f53-8f71-222f6235878c"), 1, 8, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 1, 423, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 15, "Initialize job", 1, null, null, null, 2, new DateTime(2019, 8, 26, 19, 5, 59, 360, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("d54b3ef5-d6df-4453-9c0a-e65778daac92"), 1, 19, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 12, 470, DateTimeKind.Local), "Job.__default", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 21, "Job", 1, null, null, null, 2, new DateTime(2019, 8, 26, 19, 5, 59, 140, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Job", 0, "Azure Pipelines 8" },
                    { new Guid("77fd62a2-c1b0-4a9d-ab6f-01b3edd8ce3a"), 1, 2, null, null, 0, new DateTime(2019, 8, 26, 19, 5, 48, 753, DateTimeKind.Local).AddTicks(3333), "Checkpoint", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, "Checkpoint", 0, null, null, null, 2, new DateTime(2019, 8, 26, 19, 5, 48, 753, DateTimeKind.Local).AddTicks(3333), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Checkpoint", 0, null },
                    { new Guid("c01af22c-28ae-4ec2-88a3-2c25fd1c19f7"), 1, 15, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 12, 16, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 18, "Set Build Variables", 4, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 6, 866, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("bf767302-d4a5-4f36-b36e-2af5b6ea0e69"), 1, 15, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 12, 463, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 20, "Finalize Job", 7, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 12, 440, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("e4189da9-018d-4cf7-ad86-bdfcb05019c7"), 1, 13, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 6, 866, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 17, "Run a one-line script", 3, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 4, 760, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("e7056187-75d6-4871-94dd-99ad27dee781"), 1, 15, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 12, 433, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 19, "Post-job: Checkout", 6, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 12, 16, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("355b3149-f885-4b52-8231-7d039e386ec1"), 1, 14, null, null, 1, new DateTime(2019, 8, 26, 19, 6, 12, 16, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, "Run a multi-line script", 5, null, null, "Evaluating: SucceededNode()Result: False", 3, new DateTime(2019, 8, 26, 19, 6, 12, 16, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" },
                    { new Guid("468d9ab3-335d-42f2-9037-d7524aa3c1e1"), 1, 18, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 15, 116, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 22, "Report build status", 2147483647, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 14, 996, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, null },
                    { new Guid("4fe87575-fe2b-4c2f-9e62-7678117b580b"), 1, 6, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 14, 960, DateTimeKind.Local), "__default", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, "__default", 1, null, null, null, 2, new DateTime(2019, 8, 26, 19, 5, 59, 140, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Stage", 0, null },
                    { new Guid("59cf6333-4b0d-43b2-a78f-097b862358af"), 1, 16, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 14, 413, DateTimeKind.Local).AddTicks(3333), "Job", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 14, "Job", 1, null, null, null, 2, new DateTime(2019, 8, 26, 19, 5, 59, 140, DateTimeKind.Local), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Phase", 0, null },
                    { new Guid("cd1b5955-97ac-4e41-a843-f523a5690ee2"), 1, 11, null, null, 0, new DateTime(2019, 8, 26, 19, 6, 4, 760, DateTimeKind.Local), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 16, "Checkout", 2, null, null, null, 2, new DateTime(2019, 8, 26, 19, 6, 1, 436, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("715b6e62-c9a8-43f6-bbd1-ff32a58c0190"), "Task", 0, "Azure Pipelines 8" }
                });

            migrationBuilder.InsertData(
                table: "TimelineRecords",
                columns: new[] { "Id", "Attempt", "ChangeId", "CurrentOperation", "DetailsId", "ErrorCount", "FinishTime", "Identifier", "LastModified", "LogId", "Name", "Order", "ParentId", "PercentComplete", "ResultCode", "ResultId", "StartTime", "StateId", "TaskId", "TimelineId", "Type", "WarningCount", "WorkerName" },
                values: new object[] { new Guid("dec844a6-4c14-4d99-9232-db5a0134d5d7"), 1, 2, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 17, 560, DateTimeKind.Local), "Checkpoint", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, "Checkpoint", 0, new Guid("96ac2280-8cb4-5df5-99de-dd2da759617d"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 17, 560, DateTimeKind.Local), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Checkpoint", 0, null });

            migrationBuilder.InsertData(
                table: "TimelineRecords",
                columns: new[] { "Id", "Attempt", "ChangeId", "CurrentOperation", "DetailsId", "ErrorCount", "FinishTime", "Identifier", "LastModified", "LogId", "Name", "Order", "ParentId", "PercentComplete", "ResultCode", "ResultId", "StartTime", "StateId", "TaskId", "TimelineId", "Type", "WarningCount", "WorkerName" },
                values: new object[] { new Guid("3a3a2a60-14c7-570b-14a4-fa42ad92f52a"), 1, 17, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 43, 623, DateTimeKind.Local).AddTicks(3333), "Job", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 2, "Job", 1, new Guid("96ac2280-8cb4-5df5-99de-dd2da759617d"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 27, 76, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Phase", 0, null });

            migrationBuilder.InsertData(
                table: "TimelineRecords",
                columns: new[] { "Id", "Attempt", "ChangeId", "CurrentOperation", "DetailsId", "ErrorCount", "FinishTime", "Identifier", "LastModified", "LogId", "Name", "Order", "ParentId", "PercentComplete", "ResultCode", "ResultId", "StartTime", "StateId", "TaskId", "TimelineId", "Type", "WarningCount", "WorkerName" },
                values: new object[] { new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), 1, 20, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 41, 503, DateTimeKind.Local).AddTicks(3333), "Job.__default", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 11, "Job", 1, new Guid("3a3a2a60-14c7-570b-14a4-fa42ad92f52a"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 27, 76, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Job", 0, "Hosted Agent" });

            migrationBuilder.InsertData(
                table: "TimelineRecords",
                columns: new[] { "Id", "Attempt", "ChangeId", "CurrentOperation", "DetailsId", "ErrorCount", "FinishTime", "Identifier", "LastModified", "LogId", "Name", "Order", "ParentId", "PercentComplete", "ResultCode", "ResultId", "StartTime", "StateId", "TaskId", "TimelineId", "Type", "WarningCount", "WorkerName" },
                values: new object[,]
                {
                    { new Guid("d1e88c09-dceb-53c1-5579-19c846f3526a"), 1, 15, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 40, 180, DateTimeKind.Local), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 6, "Set Build Variables", 4, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 34, 580, DateTimeKind.Local), 1, new Guid("e213ff0f-5d5c-4791-802d-52ea3e7be1f1"), new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("036ed663-514a-59f3-0c88-23d2cf182147"), 1, 16, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 40, 903, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 7, "Get Setted variables", 5, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 40, 180, DateTimeKind.Local), 1, new Guid("e213ff0f-5d5c-4791-802d-52ea3e7be1f1"), new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("f3308f0e-00fd-4d02-932c-43c5359ddb48"), 1, 8, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 28, 863, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 3, "Initialize job", 1, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 27, 303, DateTimeKind.Local).AddTicks(3333), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("f8ed7bd8-2a7f-56f6-9385-7fc29a8b5b7b"), 1, 13, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 34, 580, DateTimeKind.Local), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 5, "Run a one-line script", 3, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 32, 493, DateTimeKind.Local).AddTicks(3333), 1, new Guid("d9bafed4-0b18-4f58-968d-86655b4d2ce9"), new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("c14bc0fb-11e2-488b-aaec-a6128f529b9f"), 1, 16, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 41, 476, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 9, "Post-job: Checkout", 7, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 41, 56, DateTimeKind.Local).AddTicks(6667), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("5caf77c8-9b10-50ef-b5c7-ca89c63e1c86"), 1, 16, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 41, 56, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 8, "Run a multi-line script", 6, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 40, 903, DateTimeKind.Local).AddTicks(3333), 1, new Guid("d9bafed4-0b18-4f58-968d-86655b4d2ce9"), new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("78db2542-c627-4140-8a7a-d06178fff4e4"), 1, 19, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 44, 63, DateTimeKind.Local).AddTicks(3333), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 12, "Report build status", 2147483647, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 43, 850, DateTimeKind.Local), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, null },
                    { new Guid("4ed93e8f-bd80-48d5-b451-d254d8f682e6"), 1, 16, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 41, 496, DateTimeKind.Local).AddTicks(6667), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 10, "Finalize Job", 8, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 41, 483, DateTimeKind.Local).AddTicks(3333), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" },
                    { new Guid("63e8042a-f367-5aec-692c-fcc654be55e4"), 1, 11, null, null, 0, new DateTime(2019, 8, 29, 15, 57, 32, 490, DateTimeKind.Local), null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 4, "Checkout", 2, new Guid("12f1170f-54f2-53f3-20dd-22fc7dff55f9"), null, null, 2, new DateTime(2019, 8, 29, 15, 57, 28, 873, DateTimeKind.Local).AddTicks(3333), 1, null, new Guid("cf2a4f36-a16a-4b3e-8512-527322c2dff8"), "Task", 0, "Hosted Agent" }
                });

            migrationBuilder.CreateIndex(
                name: "IX_AgentPoolQueues_PoolId",
                table: "AgentPoolQueues",
                column: "PoolId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildAuthorizationScopes_Name",
                table: "BuildAuthorizationScopes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildConfigurations_BuildDefinitionId",
                table: "BuildConfigurations",
                column: "BuildDefinitionId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildConfigurations_BuildId",
                table: "BuildConfigurations",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildConfigurations_ProjectId",
                table: "BuildConfigurations",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildConfigurations_RepositoryId",
                table: "BuildConfigurations",
                column: "RepositoryId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildDefinitionQualities_Name",
                table: "BuildDefinitionQualities",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildDefinitionQueueStatuses_Name",
                table: "BuildDefinitionQueueStatuses",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildDefinitionTypes_Name",
                table: "BuildDefinitionTypes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildDefinitionVariables_BuildDefinitionId",
                table: "BuildDefinitionVariables",
                column: "BuildDefinitionId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildIssues_BuildId",
                table: "BuildIssues",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildIssues_IssueTypeId",
                table: "BuildIssues",
                column: "IssueTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildIssueTypes_Name",
                table: "BuildIssueTypes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildLogs_BuildId",
                table: "BuildLogs",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildProperties_BuildId",
                table: "BuildProperties",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildQueuePriorities_Name",
                table: "BuildQueuePriorities",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildReasons_Name",
                table: "BuildReasons",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildRepository_BuildDefinitionId",
                table: "BuildRepository",
                column: "BuildDefinitionId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildRepository_GitRepositoryId",
                table: "BuildRepository",
                column: "GitRepositoryId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildResults_Name",
                table: "BuildResults",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Builds_BuildRepositoryId",
                table: "Builds",
                column: "BuildRepositoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_QueueId",
                table: "Builds",
                column: "QueueId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_QueuePriorityId",
                table: "Builds",
                column: "QueuePriorityId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_ReasonId",
                table: "Builds",
                column: "ReasonId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_ResultId",
                table: "Builds",
                column: "ResultId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_StatusId",
                table: "Builds",
                column: "StatusId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_TriggeredByBuildId",
                table: "Builds",
                column: "TriggeredByBuildId");

            migrationBuilder.CreateIndex(
                name: "IX_Builds_BuildDefinitionId_BuildNumber",
                table: "Builds",
                columns: new[] { "BuildDefinitionId", "BuildNumber" },
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildStatuses_Name",
                table: "BuildStatuses",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildTriggers_BuildDefinitionId",
                table: "BuildTriggers",
                column: "BuildDefinitionId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BuildTriggers_TriggerTypeId",
                table: "BuildTriggers",
                column: "TriggerTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_BuildTriggerTypes_Name",
                table: "BuildTriggerTypes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_DefinitionProperties_BuildDefinitionId",
                table: "DefinitionProperties",
                column: "BuildDefinitionId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_DraftOfDefinitionId",
                table: "Definitions",
                column: "DraftOfDefinitionId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_JobAuthorizationScopeId",
                table: "Definitions",
                column: "JobAuthorizationScopeId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_ProjectId",
                table: "Definitions",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_QualityId",
                table: "Definitions",
                column: "QualityId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_QueueId",
                table: "Definitions",
                column: "QueueId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_QueueStatusId",
                table: "Definitions",
                column: "QueueStatusId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_TypeId",
                table: "Definitions",
                column: "TypeId");

            migrationBuilder.CreateIndex(
                name: "IX_Definitions_Name_ProjectId",
                table: "Definitions",
                columns: new[] { "Name", "ProjectId" },
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_GitRepositories_ParentRepositoryId",
                table: "GitRepositories",
                column: "ParentRepositoryId");

            migrationBuilder.CreateIndex(
                name: "IX_GitRepositories_ProjectId",
                table: "GitRepositories",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_Projects_StateId",
                table: "Projects",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Projects_VisibilityId",
                table: "Projects",
                column: "VisibilityId");

            migrationBuilder.CreateIndex(
                name: "IX_Projects_Name_OrganizationName",
                table: "Projects",
                columns: new[] { "Name", "OrganizationName" },
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_ProjectStates_Name",
                table: "ProjectStates",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_ProjectVisibilities_Name",
                table: "ProjectVisibilities",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TaskResults_Name",
                table: "TaskResults",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestActionResults_TestResultIterationId",
                table: "TestActionResults",
                column: "TestResultIterationId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlans_BuildDefinitionId",
                table: "TestPlans",
                column: "BuildDefinitionId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlans_BuildId",
                table: "TestPlans",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlans_PreviousBuildId",
                table: "TestPlans",
                column: "PreviousBuildId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlans_ProjectId",
                table: "TestPlans",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlans_RootSuiteId",
                table: "TestPlans",
                column: "RootSuiteId");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlanVariables_ProjectID",
                table: "TestPlanVariables",
                column: "ProjectID");

            migrationBuilder.CreateIndex(
                name: "IX_TestPlanVariables_TestPlanId",
                table: "TestPlanVariables",
                column: "TestPlanId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResultAttachments_TestResultId",
                table: "TestResultAttachments",
                column: "TestResultId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResultCustomFields_TestResultId",
                table: "TestResultCustomFields",
                column: "TestResultId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResultFailureTypes_Name",
                table: "TestResultFailureTypes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestResultGroupTypes_Name",
                table: "TestResultGroupTypes",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestResultIterationDetails_TestResultId",
                table: "TestResultIterationDetails",
                column: "TestResultId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_AfnStripId",
                table: "TestResults",
                column: "AfnStripId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_BuildId",
                table: "TestResults",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_FailureTypeId",
                table: "TestResults",
                column: "FailureTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_GroupTypeId",
                table: "TestResults",
                column: "GroupTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_ProjectId",
                table: "TestResults",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_TestRunId",
                table: "TestResults",
                column: "TestRunId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_TestRunStateId",
                table: "TestResults",
                column: "TestRunStateId");

            migrationBuilder.CreateIndex(
                name: "IX_TestResults_TestSuiteId",
                table: "TestResults",
                column: "TestSuiteId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRunAttachments_TestRunId",
                table: "TestRunAttachments",
                column: "TestRunId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRunCustomFields_TestRunId",
                table: "TestRunCustomFields",
                column: "TestRunId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_BuildConfigurationId",
                table: "TestRuns",
                column: "BuildConfigurationId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_BuildId",
                table: "TestRuns",
                column: "BuildId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_ProjectId",
                table: "TestRuns",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_StateId",
                table: "TestRuns",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_SubstateId",
                table: "TestRuns",
                column: "SubstateId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRuns_TestPlanId",
                table: "TestRuns",
                column: "TestPlanId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRunStates_Name",
                table: "TestRunStates",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestRunStatistics_TestRunId",
                table: "TestRunStatistics",
                column: "TestRunId");

            migrationBuilder.CreateIndex(
                name: "IX_TestRunSubstates_Name",
                table: "TestRunSubstates",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestRunTags_TestRunId",
                table: "TestRunTags",
                column: "TestRunId");

            migrationBuilder.CreateIndex(
                name: "IX_TestSuite_ParentTestSuiteId",
                table: "TestSuite",
                column: "ParentTestSuiteId");

            migrationBuilder.CreateIndex(
                name: "IX_TestSuite_ProjectId",
                table: "TestSuite",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_TestSuite_SuiteTypeId",
                table: "TestSuite",
                column: "SuiteTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_TestSuite_TestPlanId",
                table: "TestSuite",
                column: "TestPlanId");

            migrationBuilder.CreateIndex(
                name: "IX_TestSuiteType_Name",
                table: "TestSuiteType",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TimelineAttempts_RecordId",
                table: "TimelineAttempts",
                column: "RecordId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineAttempts_TimelineId",
                table: "TimelineAttempts",
                column: "TimelineId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecords_LogId",
                table: "TimelineRecords",
                column: "LogId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecords_ParentId",
                table: "TimelineRecords",
                column: "ParentId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecords_ResultId",
                table: "TimelineRecords",
                column: "ResultId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecords_StateId",
                table: "TimelineRecords",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecords_TimelineId",
                table: "TimelineRecords",
                column: "TimelineId");

            migrationBuilder.CreateIndex(
                name: "IX_TimelineRecordStates_Name",
                table: "TimelineRecordStates",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Timelines_BuildId",
                table: "Timelines",
                column: "BuildId");

            migrationBuilder.AddForeignKey(
                name: "FK_TestRuns_TestPlans_TestPlanId",
                table: "TestRuns",
                column: "TestPlanId",
                principalTable: "TestPlans",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_TestPlans_TestSuite_RootSuiteId",
                table: "TestPlans",
                column: "RootSuiteId",
                principalTable: "TestSuite",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_TestResults_TestResultAttachments_AfnStripId",
                table: "TestResults",
                column: "AfnStripId",
                principalTable: "TestResultAttachments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AgentPoolQueues_TaskAgentPools_PoolId",
                table: "AgentPoolQueues");

            migrationBuilder.DropForeignKey(
                name: "FK_BuildConfigurations_Definitions_BuildDefinitionId",
                table: "BuildConfigurations");

            migrationBuilder.DropForeignKey(
                name: "FK_BuildRepository_Definitions_BuildDefinitionId",
                table: "BuildRepository");

            migrationBuilder.DropForeignKey(
                name: "FK_Builds_Definitions_BuildDefinitionId",
                table: "Builds");

            migrationBuilder.DropForeignKey(
                name: "FK_TestPlans_Definitions_BuildDefinitionId",
                table: "TestPlans");

            migrationBuilder.DropForeignKey(
                name: "FK_BuildConfigurations_Builds_BuildId",
                table: "BuildConfigurations");

            migrationBuilder.DropForeignKey(
                name: "FK_TestPlans_Builds_BuildId",
                table: "TestPlans");

            migrationBuilder.DropForeignKey(
                name: "FK_TestPlans_Builds_PreviousBuildId",
                table: "TestPlans");

            migrationBuilder.DropForeignKey(
                name: "FK_TestResults_Builds_BuildId",
                table: "TestResults");

            migrationBuilder.DropForeignKey(
                name: "FK_TestRuns_Builds_BuildId",
                table: "TestRuns");

            migrationBuilder.DropForeignKey(
                name: "FK_BuildConfigurations_Projects_ProjectId",
                table: "BuildConfigurations");

            migrationBuilder.DropForeignKey(
                name: "FK_GitRepositories_Projects_ProjectId",
                table: "GitRepositories");

            migrationBuilder.DropForeignKey(
                name: "FK_TestPlans_Projects_ProjectId",
                table: "TestPlans");

            migrationBuilder.DropForeignKey(
                name: "FK_TestResults_Projects_ProjectId",
                table: "TestResults");

            migrationBuilder.DropForeignKey(
                name: "FK_TestRuns_Projects_ProjectId",
                table: "TestRuns");

            migrationBuilder.DropForeignKey(
                name: "FK_TestSuite_Projects_ProjectId",
                table: "TestSuite");

            migrationBuilder.DropForeignKey(
                name: "FK_BuildConfigurations_GitRepositories_RepositoryId",
                table: "BuildConfigurations");

            migrationBuilder.DropForeignKey(
                name: "FK_TestPlans_TestSuite_RootSuiteId",
                table: "TestPlans");

            migrationBuilder.DropForeignKey(
                name: "FK_TestResults_TestSuite_TestSuiteId",
                table: "TestResults");

            migrationBuilder.DropForeignKey(
                name: "FK_TestRuns_TestPlans_TestPlanId",
                table: "TestRuns");

            migrationBuilder.DropForeignKey(
                name: "FK_TestResultAttachments_TestResults_TestResultId",
                table: "TestResultAttachments");

            migrationBuilder.DropTable(
                name: "BuildDefinitionVariables");

            migrationBuilder.DropTable(
                name: "BuildIssues");

            migrationBuilder.DropTable(
                name: "BuildProperties");

            migrationBuilder.DropTable(
                name: "BuildTriggers");

            migrationBuilder.DropTable(
                name: "DefinitionProperties");

            migrationBuilder.DropTable(
                name: "TestActionResults");

            migrationBuilder.DropTable(
                name: "TestPlanVariables");

            migrationBuilder.DropTable(
                name: "TestResultCustomFields");

            migrationBuilder.DropTable(
                name: "TestRunAttachments");

            migrationBuilder.DropTable(
                name: "TestRunCustomFields");

            migrationBuilder.DropTable(
                name: "TestRunStatistics");

            migrationBuilder.DropTable(
                name: "TestRunTags");

            migrationBuilder.DropTable(
                name: "TimelineAttempts");

            migrationBuilder.DropTable(
                name: "BuildIssueTypes");

            migrationBuilder.DropTable(
                name: "BuildTriggerTypes");

            migrationBuilder.DropTable(
                name: "TestResultIterationDetails");

            migrationBuilder.DropTable(
                name: "TimelineRecords");

            migrationBuilder.DropTable(
                name: "BuildLogs");

            migrationBuilder.DropTable(
                name: "TaskResults");

            migrationBuilder.DropTable(
                name: "TimelineRecordStates");

            migrationBuilder.DropTable(
                name: "Timelines");

            migrationBuilder.DropTable(
                name: "TaskAgentPools");

            migrationBuilder.DropTable(
                name: "Definitions");

            migrationBuilder.DropTable(
                name: "BuildAuthorizationScopes");

            migrationBuilder.DropTable(
                name: "BuildDefinitionQualities");

            migrationBuilder.DropTable(
                name: "BuildDefinitionQueueStatuses");

            migrationBuilder.DropTable(
                name: "BuildDefinitionTypes");

            migrationBuilder.DropTable(
                name: "Builds");

            migrationBuilder.DropTable(
                name: "BuildRepository");

            migrationBuilder.DropTable(
                name: "AgentPoolQueues");

            migrationBuilder.DropTable(
                name: "BuildQueuePriorities");

            migrationBuilder.DropTable(
                name: "BuildReasons");

            migrationBuilder.DropTable(
                name: "BuildResults");

            migrationBuilder.DropTable(
                name: "BuildStatuses");

            migrationBuilder.DropTable(
                name: "Projects");

            migrationBuilder.DropTable(
                name: "ProjectStates");

            migrationBuilder.DropTable(
                name: "ProjectVisibilities");

            migrationBuilder.DropTable(
                name: "GitRepositories");

            migrationBuilder.DropTable(
                name: "TestSuite");

            migrationBuilder.DropTable(
                name: "TestSuiteType");

            migrationBuilder.DropTable(
                name: "TestPlans");

            migrationBuilder.DropTable(
                name: "TestResults");

            migrationBuilder.DropTable(
                name: "TestResultAttachments");

            migrationBuilder.DropTable(
                name: "TestResultFailureTypes");

            migrationBuilder.DropTable(
                name: "TestResultGroupTypes");

            migrationBuilder.DropTable(
                name: "TestRuns");

            migrationBuilder.DropTable(
                name: "BuildConfigurations");

            migrationBuilder.DropTable(
                name: "TestRunStates");

            migrationBuilder.DropTable(
                name: "TestRunSubstates");
        }
    }
}
