USE [eDowntime]
GO
/****** Object:  Table [dbo].[Access_Role]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access_Role](
	[roleID] [tinyint] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](30) NULL,
	[roleDescr] [varchar](50) NULL,
	[creationDate] [datetime] NULL,
	[createdBy] [varchar](30) NULL,
	[updateDate] [datetime] NULL,
	[updatedBy] [varchar](30) NULL,
	[isActive] [tinyint] NULL,
 CONSTRAINT [PK_Access_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Access_UserRole]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Access_UserRole](
	[userRoleId] [int] IDENTITY(1,1) NOT NULL,
	[NTLogin] [varchar](30) NULL,
	[roleID] [tinyint] NULL,
	[plantID] [tinyint] NULL,
	[custID] [tinyint] NULL,
	[creationDate] [datetime] NULL,
	[createdBy] [varchar](30) NULL,
	[updateDate] [datetime] NULL,
	[updatedBy] [varchar](30) NULL,
	[isActive] [tinyint] NULL,
	[custName] [varchar](50) NULL,
 CONSTRAINT [PK_Access_UserRole] PRIMARY KEY CLUSTERED 
(
	[userRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Action]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action](
	[actionId] [int] IDENTITY(1,1) NOT NULL,
	[yyww] [varchar](50) NOT NULL,
	[custId] [tinyint] NULL,
	[category] [varchar](50) NULL,
	[details] [varchar](max) NULL,
	[problemDescription] [varchar](max) NULL,
	[rootCause] [varchar](max) NULL,
	[containmentAction] [varchar](max) NULL,
	[CAPA] [varchar](max) NULL,
	[overallImpact] [varchar](max) NULL,
	[ECNPCN] [varchar](max) NULL,
	[FIA] [varchar](max) NULL,
	[responsible] [varchar](max) NULL,
	[commitDate] [varchar](max) NULL,
	[statusId] [tinyint] NULL,
	[isActive] [tinyint] NULL,
	[creationDate] [datetime] NULL,
	[createdBy] [varchar](20) NULL,
	[updateDate] [datetime] NULL,
	[updatedBy] [varchar](20) NULL,
	[custName] [varchar](50) NULL,
	[remark] [nvarchar](max) NULL,
	[totalDT] [float] NULL,
	[station] [varchar](50) NULL,
	[stationName] [varchar](100) NULL,
	[fileName] [varchar](max) NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[actionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master_Status]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master_Status](
	[statusId] [tinyint] IDENTITY(1,1) NOT NULL,
	[status] [varchar](100) NULL,
	[colorCode] [varchar](50) NULL,
	[creationDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updateDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[isActive] [tinyint] NULL,
 CONSTRAINT [PK_Master_Status] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Access_Role] ON 

INSERT [dbo].[Access_Role] ([roleID], [roleName], [roleDescr], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive]) VALUES (1, N'System Admin', N'System Admin', CAST(N'2022-02-09T13:38:41.867' AS DateTime), N'SYSTEM', NULL, NULL, 1)
INSERT [dbo].[Access_Role] ([roleID], [roleName], [roleDescr], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive]) VALUES (2, N'Super User', N'Supper User', CAST(N'2022-02-09T13:38:42.040' AS DateTime), N'SYSTEM', NULL, NULL, 1)
INSERT [dbo].[Access_Role] ([roleID], [roleName], [roleDescr], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive]) VALUES (3, N'User', N'User', CAST(N'2022-02-09T13:38:42.040' AS DateTime), N'SYSTEM', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Access_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Access_UserRole] ON 

INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (1, N'1099969', 1, 1, NULL, CAST(N'2022-02-09T15:20:08.080' AS DateTime), N'SYSTEM', CAST(N'2022-02-18T14:35:24.720' AS DateTime), N'2203258', 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (2, N'2501157', 1, 1, NULL, CAST(N'2022-02-10T13:10:30.373' AS DateTime), N'2501157', CAST(N'2022-02-15T13:28:29.150' AS DateTime), N'2501157', 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (3, N'Dinhn2', 3, 1, NULL, CAST(N'2022-02-22T10:49:25.780' AS DateTime), N'2501157', CAST(N'2022-02-22T11:03:33.280' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (4, N'phamn3', 1, 1, NULL, CAST(N'2022-02-24T08:11:50.970' AS DateTime), N'2501157', NULL, NULL, 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (5, N'2788343', 1, 1, NULL, CAST(N'2022-02-24T08:21:59.797' AS DateTime), N'2501157', NULL, NULL, 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (6, N'phamn3', 3, 1, NULL, CAST(N'2022-02-24T09:37:21.463' AS DateTime), N'1099969', CAST(N'2022-02-24T09:37:31.177' AS DateTime), N'1099969', 0, N'HCM_SOLAREDGE            ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (7, N'2258130', 2, 1, NULL, CAST(N'2022-02-24T14:41:55.533' AS DateTime), N'2501157', CAST(N'2022-02-25T08:18:55.500' AS DateTime), N'2501157', 1, N'HCM_CALIX                ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (8, N'quochuyn', 1, 1, NULL, CAST(N'2022-02-24T15:04:21.483' AS DateTime), N'2501157', NULL, NULL, 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (9, N'orillane', 2, 1, NULL, CAST(N'2022-02-25T08:21:22.957' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (10, N'1373658', 3, 1, NULL, CAST(N'2022-02-25T08:22:13.363' AS DateTime), N'2501157', CAST(N'2022-03-17T16:20:30.650' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (11, N'NguyenH1', 3, 1, NULL, CAST(N'2022-02-25T08:22:44.117' AS DateTime), N'2501157', CAST(N'2022-03-17T16:20:46.243' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (12, N'2276774', 3, 1, NULL, CAST(N'2022-02-25T08:23:15.073' AS DateTime), N'2501157', CAST(N'2022-03-17T16:20:57.953' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (13, N'1091479', 3, 1, NULL, CAST(N'2022-02-25T08:23:51.547' AS DateTime), N'2501157', CAST(N'2022-03-17T16:21:11.480' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (14, N'tuanthap', 2, 1, NULL, CAST(N'2022-02-25T08:24:18.480' AS DateTime), N'2501157', CAST(N'2022-03-18T07:45:55.037' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (15, N'1046154', 3, 1, NULL, CAST(N'2022-02-25T08:24:40.823' AS DateTime), N'2501157', CAST(N'2022-03-17T20:54:22.907' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (16, N'1220110', 3, 1, NULL, CAST(N'2022-02-25T08:25:03.930' AS DateTime), N'2501157', CAST(N'2022-03-17T20:58:54.470' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (17, N'NguyenT153', 3, 1, NULL, CAST(N'2022-02-25T08:25:30.863' AS DateTime), N'2501157', CAST(N'2022-03-17T20:59:03.150' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (18, N'Ca1T', 3, 1, NULL, CAST(N'2022-02-25T08:25:56.793' AS DateTime), N'2501157', CAST(N'2022-03-17T20:59:11.200' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (19, N'2628878', 3, 1, NULL, CAST(N'2022-02-25T08:26:25.440' AS DateTime), N'2501157', CAST(N'2022-03-17T20:59:19.030' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (20, N'NguyenT54', 3, 1, NULL, CAST(N'2022-02-25T08:26:54.440' AS DateTime), N'2501157', CAST(N'2022-03-17T20:59:28.203' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (21, N'Nguyen1V7', 3, 1, NULL, CAST(N'2022-02-25T08:27:28.820' AS DateTime), N'2501157', CAST(N'2022-03-17T20:59:35.147' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (22, N'phamV5', 2, 1, NULL, CAST(N'2022-02-25T08:27:59.810' AS DateTime), N'2501157', CAST(N'2022-03-18T07:44:58.203' AS DateTime), N'2501157', 1, N'HCM_LnG                  ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (23, N'2561203', 3, 1, NULL, CAST(N'2022-02-25T10:26:39.927' AS DateTime), N'2501157', CAST(N'2022-03-17T21:03:20.187' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (24, N'1154056', 3, 1, NULL, CAST(N'2022-02-25T10:27:18.850' AS DateTime), N'2501157', CAST(N'2022-03-17T21:03:00.840' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (25, N'2309113', 3, 1, NULL, CAST(N'2022-02-25T10:28:15.053' AS DateTime), N'2501157', CAST(N'2022-03-17T21:03:33.133' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (26, N'2832659', 2, 1, NULL, CAST(N'2022-02-25T10:28:41.773' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SCHNEIDER            ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (27, N'714648', 3, 1, NULL, CAST(N'2022-02-25T10:29:19.717' AS DateTime), N'2501157', CAST(N'2022-03-17T21:03:54.877' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (28, N'NgoL', 2, 1, NULL, CAST(N'2022-02-25T10:29:53.627' AS DateTime), N'2501157', CAST(N'2022-03-18T07:45:35.310' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (29, N'2378329', 3, 1, NULL, CAST(N'2022-02-25T10:31:04.057' AS DateTime), N'2501157', CAST(N'2022-03-17T21:04:24.907' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (30, N'dalipem', 2, 1, NULL, CAST(N'2022-02-25T10:31:29.283' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SCHNEIDER            ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (31, N'2868695', 3, 1, NULL, CAST(N'2022-02-25T10:31:53.160' AS DateTime), N'2501157', CAST(N'2022-03-17T21:04:47.760' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (32, N'2569954', 3, 1, NULL, CAST(N'2022-02-25T10:32:18.853' AS DateTime), N'2501157', CAST(N'2022-03-17T21:05:31.380' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (33, N'2868692', 3, 1, NULL, CAST(N'2022-02-25T10:33:13.007' AS DateTime), N'2501157', CAST(N'2022-03-17T21:05:17.240' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (34, N'1389643', 3, 1, NULL, CAST(N'2022-02-28T13:29:20.957' AS DateTime), N'2501157', CAST(N'2022-03-17T21:05:41.873' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (35, N'2572748', 3, 1, NULL, CAST(N'2022-02-28T13:29:45.433' AS DateTime), N'2501157', CAST(N'2022-03-17T21:05:53.940' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (36, N'1121572', 3, 1, NULL, CAST(N'2022-02-28T13:35:07.203' AS DateTime), N'2501157', CAST(N'2022-03-17T21:06:07.490' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (37, N'1264089', 3, 1, NULL, CAST(N'2022-02-28T13:35:30.710' AS DateTime), N'2501157', CAST(N'2022-03-17T21:06:22.690' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (38, N'1063960', 3, 1, NULL, CAST(N'2022-02-28T13:36:02.607' AS DateTime), N'2501157', CAST(N'2022-03-17T21:06:51.030' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (39, N'le37v', 3, 1, NULL, CAST(N'2022-02-28T13:44:19.320' AS DateTime), N'2501157', CAST(N'2022-03-17T21:06:35.510' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (40, N'NguyenX2', 2, 1, NULL, CAST(N'2022-02-28T13:46:13.323' AS DateTime), N'2501157', CAST(N'2022-02-28T13:47:21.647' AS DateTime), N'2501157', 1, N'HCM_SCHNEIDER            ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (41, N'2230578', 2, 1, NULL, CAST(N'2022-02-28T13:48:18.350' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_CALIX                ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (42, N'2378351', 3, 1, NULL, CAST(N'2022-02-28T13:48:46.007' AS DateTime), N'2501157', CAST(N'2022-03-17T21:07:09.463' AS DateTime), N'2501157', 1, N'HCM_CALIX')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (43, N'len10', 2, 1, NULL, CAST(N'2022-02-28T13:49:08.633' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_CALIX                ')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (44, N'1132950', 3, 1, NULL, CAST(N'2022-02-28T13:49:34.153' AS DateTime), N'2501157', CAST(N'2022-03-17T21:07:23.807' AS DateTime), N'2501157', 1, N'HCM_CALIX')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (45, N'2512460', 3, 1, NULL, CAST(N'2022-02-28T13:49:53.827' AS DateTime), N'2501157', CAST(N'2022-03-17T21:07:36.170' AS DateTime), N'2501157', 1, N'HCM_CALIX')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (46, N'1601558', 2, 1, NULL, CAST(N'2022-02-28T13:50:31.667' AS DateTime), N'2501157', CAST(N'2022-03-17T21:07:57.403' AS DateTime), N'2501157', 1, N'HCM_CALIX')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (47, N'2385564', 2, 1, NULL, CAST(N'2022-03-17T16:28:19.140' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (48, N'2309514', 2, 1, NULL, CAST(N'2022-03-18T08:52:06.230' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SOLAREDGE')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (49, N'3221435', 2, 1, NULL, CAST(N'2022-03-18T08:57:57.203' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_KEURIG')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (50, N'1388047', 2, 1, NULL, CAST(N'2022-03-18T08:59:43.360' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (51, N'1422977', 2, 1, NULL, CAST(N'2022-03-18T10:21:09.087' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SOLAREDGE')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (52, N'EdwinA', 1, 1, NULL, CAST(N'2022-03-18T15:36:59.597' AS DateTime), N'2501157', NULL, NULL, 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (53, N'1305371', 2, 1, NULL, CAST(N'2022-03-21T10:25:42.673' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SIERAWIRELESS')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (54, N'2203281', 2, 1, NULL, CAST(N'2022-03-21T10:26:06.400' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SIERAWIRELESS')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (55, N'2832661', 2, 1, NULL, CAST(N'2022-03-21T10:26:25.880' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SIERAWIRELESS')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (56, N'1086390', 2, 1, NULL, CAST(N'2022-03-21T10:26:49.197' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SIERAWIRELESS')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (57, N'1171354', 2, 1, NULL, CAST(N'2022-03-21T10:27:07.737' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SIERAWIRELESS')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (58, N'1155744', 2, 1, NULL, CAST(N'2022-03-25T08:49:12.503' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_INGENICO')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (59, N'2385657', 2, 1, NULL, CAST(N'2022-03-25T10:26:07.070' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_INGENICO')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (60, N'Voo', 2, 1, NULL, CAST(N'2022-03-25T10:26:53.960' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_INGENICO')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (61, N'2876071', 2, 1, NULL, CAST(N'2022-03-28T09:04:13.980' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_SES')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (62, N'3088504', 2, 1, NULL, CAST(N'2022-03-28T09:16:08.967' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_KEURIG')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (63, N'leet21', 1, 1, NULL, CAST(N'2022-03-28T21:22:06.390' AS DateTime), N'2501157', NULL, NULL, 1, N'None')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (64, N'2203233', 2, 1, NULL, CAST(N'2022-04-05T08:34:16.257' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (65, N'692241', 2, 1, NULL, CAST(N'2022-04-05T08:35:11.813' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (66, N'1301135', 2, 1, NULL, CAST(N'2022-04-05T08:35:32.183' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (67, N'2203246', 2, 1, NULL, CAST(N'2022-04-05T08:35:51.353' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (68, N'2462228', 2, 1, NULL, CAST(N'2022-04-05T08:36:10.310' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (69, N'1162576', 2, 1, NULL, CAST(N'2022-04-05T08:36:28.297' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (70, N'1464954', 2, 1, NULL, CAST(N'2022-04-05T08:36:44.977' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (71, N'2868690', 2, 1, NULL, CAST(N'2022-04-05T08:37:20.113' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (72, N'2993275', 2, 1, NULL, CAST(N'2022-04-05T08:37:45.130' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (73, N'1208596', 2, 1, NULL, CAST(N'2022-04-05T08:38:00.367' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (74, N'2729393', 2, 1, NULL, CAST(N'2022-04-05T08:38:16.213' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ZEBRA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (75, N'Trank11', 2, 1, NULL, CAST(N'2022-04-06T15:59:09.353' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ACLARA')
INSERT [dbo].[Access_UserRole] ([userRoleId], [NTLogin], [roleID], [plantID], [custID], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive], [custName]) VALUES (76, N'dangvied', 2, 1, NULL, CAST(N'2022-04-06T16:58:06.880' AS DateTime), N'2501157', NULL, NULL, 1, N'HCM_ACLARA')
SET IDENTITY_INSERT [dbo].[Access_UserRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Action] ON 

INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (1, N'2022-08', NULL, N'Fixture_Related                                   ', N'Probes problem', N'Intermittent analog measurement', N'Misaligned probe TP384', N'Replace socket and probe', N'Put cover or push pins to prevent hitting probes', N'100', N'null', N'null', N'Vu Pham', N'2022-03-17', 1, 1, CAST(N'2022-02-25T15:30:46.160' AS DateTime), NULL, CAST(N'2022-03-04T08:42:50.300' AS DateTime), N'orillane', N'HCM_LnG                  ', N'Open', 0.5, N'ICT', N'ICT                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (2, N'2022-07', NULL, N'PROCESS ISSUE                                     ', N'Network                                                                                             ', NULL, NULL, NULL, NULL, N'6', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.257' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 1.25, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (3, N'2022-06', NULL, N'Network                                           ', N'Unstable network', NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.257' AS DateTime), NULL, NULL, NULL, N'HCM_CALIX                ', NULL, 2, N'ICT', N'ICT                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (4, N'2022-06', NULL, N'PROCESS ISSUE                                     ', N'Network                                                                                             ', NULL, NULL, NULL, NULL, N'21', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.270' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 1.93, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (5, N'2022-04', NULL, N'PROCESS ISSUE                                     ', N'Network                                                                                             ', NULL, NULL, NULL, NULL, N'30', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.270' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 2.91, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (6, N'2022-03', NULL, N'PROCESS ISSUE                                     ', N'Network                                                                                             ', NULL, NULL, NULL, NULL, N'17', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.287' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 3.26, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (7, N'2022-02', NULL, N'Tester_Related                                    ', N'Pin card problem', NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.287' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER            ', NULL, 6.76, N'ICT', N'ICT                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (8, N'2022-01', NULL, N'Tester_Related                                    ', N'ASRU card problem', NULL, NULL, NULL, NULL, N'100', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-02-25T15:30:46.303' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER            ', NULL, 2.55, N'ICT', N'ICT                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (30, N'2022-08', NULL, N'FALSE CALL FINETUNING                             ', N'FF trigger                                                                                          ', N'The trigger from hardlock system that cause downtime', N'The repeat false call orcur', N'', N'Remind techs for utilize V-Tune and Control tower for reduce the trigger', N'60', N'null', N'null', N'Nam Pham', N'2022-03-25', 1, 1, CAST(N'2022-03-04T14:04:33.120' AS DateTime), NULL, CAST(N'2022-03-04T15:19:21.320' AS DateTime), N'phamn3', N'HCM_KEURIG               ', N'In progress', 1.67, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (31, N'2022-08', NULL, N'PROGRAM DEVELOPMENT                               ', N'Other                                                                                               ', NULL, NULL, NULL, NULL, N'28', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-04T14:04:33.120' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 0.79, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (32, N'2022-08', NULL, N'HARDWARE ISSUE                                    ', N'Other                                                                                               ', NULL, NULL, NULL, NULL, N'12', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-04T14:04:33.120' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG               ', NULL, 0.34, N'AOI', N'AOI                                               ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (34, N'2022-08', NULL, N'MACHINE_ERROR                                     ', N'Others', NULL, NULL, NULL, NULL, N'71', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-04T14:14:32.540' AS DateTime), NULL, NULL, NULL, N'HCM_SOLAREDGE            ', NULL, 3.42, N'ICT', N'ICT                      ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (35, N'2022-08', NULL, N'MACHINE_ERROR                                     ', N'JOT-SPEA Error', NULL, NULL, NULL, NULL, N'14', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-04T14:14:32.540' AS DateTime), NULL, NULL, NULL, N'HCM_SOLAREDGE            ', NULL, 0.66, N'ICT', N'ICT-SPEA                 ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (36, N'2022-08', NULL, N'Finetuning                                        ', N'Analog_Test', NULL, NULL, NULL, NULL, N'5', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-04T14:14:32.557' AS DateTime), NULL, NULL, NULL, N'HCM_SOLAREDGE            ', NULL, 0.25, N'ICT', N'ICT-SPEA                 ', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (44, N'2022-09', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', N'The trigger from hardlock system that cause downtime', N'The false repeated occur', N'null', N'Remind techs for utilize V-Tune and Control tower for reduce the trigger', N'0.5', N'null', N'null', N'Phuong Nguyen', N'2022-03-25', 1, 1, CAST(N'2022-03-11T11:48:46.693' AS DateTime), NULL, CAST(N'2022-03-11T14:01:48.720' AS DateTime), N'phamn3', N'HCM_KEURIG', N'null', 3.01, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (45, N'2022-09', NULL, N'PROGRAM DEVELOPMENT', N'OTHER', NULL, NULL, NULL, NULL, N'0.1', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.693' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG', NULL, 0.58, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (46, N'2022-09', NULL, N'HARDWARE ISSUE', N'CAMERA', NULL, NULL, NULL, NULL, N'0.08', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.693' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG', NULL, 0.47, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (47, N'2022-09', NULL, N'TESTER_RELATED', N'PIN CARD PROBLEM', NULL, NULL, NULL, NULL, N'0.71', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.710' AS DateTime), NULL, NULL, NULL, N'HCM_LNG', NULL, 4.26, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (48, N'2022-09', NULL, N'SW_RELATED', N'WATCHDOG ERROR', NULL, NULL, NULL, NULL, N'0.15', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.710' AS DateTime), NULL, NULL, NULL, N'HCM_LNG', NULL, 0.92, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (49, N'2022-09', NULL, N'FIXTURE_RELATED', N'PROBES PROBLEM', NULL, NULL, NULL, NULL, N'0.1', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.710' AS DateTime), NULL, NULL, NULL, N'HCM_LNG', NULL, 0.59, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (50, N'2022-09', NULL, N'TESTER_RELATED', N'ASRU CARD PROBLEM', NULL, NULL, NULL, NULL, N'0.18', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.723' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER', NULL, 4.33, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (51, N'2022-09', NULL, N'TESTER_RELATED', N'PIN CARD PROBLEM', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.723' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER', NULL, 1, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (52, N'2022-09', NULL, N'MACHINE_ERROR', N'OTHERS', NULL, NULL, NULL, NULL, N'0.21', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.723' AS DateTime), NULL, NULL, NULL, N'HCM_SOLAREDGE', NULL, 1.58, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (53, N'2022-09', NULL, N'FIXTURE_RELATED', N'PROBES PROBLEM', NULL, NULL, NULL, NULL, N'0.13', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-11T11:48:46.723' AS DateTime), NULL, NULL, NULL, N'HCM_SOLAREDGE', NULL, 0.95, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (423, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.07', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.3, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (424, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'OTHER', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (425, N'2022-10', NULL, N'FALSE CALL FINE TUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.23', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_CALIX', NULL, 0.3, N'AXI', N'AXI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (426, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.1', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_INGENICO', NULL, 1.26, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (427, N'2022-10', NULL, N'SOFTWARE ISSUE', N'VVTS', NULL, NULL, NULL, NULL, N'0.06', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_INGENICO', NULL, 0.75, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (428, N'2022-10', NULL, N'FALSE CALL FINE TUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.55', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.210' AS DateTime), NULL, NULL, NULL, N'HCM_INGENICO', NULL, 0.71, N'AXI', N'AXI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (429, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', N'The trigger from hardlock system that cause downtime', N'the false call repeat occur', N'finetune the program with offline solution.', N'Remind techs to utilize the V-Tune and Control tower for control FF', N'0.44', N'null', N'null', N'Phuong Nguyen', N'2022-04-01', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-25T13:40:51.770' AS DateTime), N'2501157', N'HCM_KEURIG', N'null', 2.64, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (430, N'2022-10', NULL, N'HARDWARE ISSUE', N'OTHER', N'The unit is stucking during inspection that causing downtime for take unit out and reset the sequence.', N'The AOI conveyor belt and motor driver not working stable and not in good condition.', N'Take unit out, reset sequence, re inspect belt and motor driver', N'Arrange with vendor for recheck and advice', N'0.28', N'null', N'null', N'Phuong Nguyen', N'2022-04-02', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-25T14:07:35.710' AS DateTime), N'phamn3', N'HCM_KEURIG', N'null', 1.67, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (431, N'2022-10', NULL, N'TESTER_RELATED', N'PIN CARD PROBLEM', N'- In night shift 10-Mar-2022 ICT02 run model S4x8W with good result as normal then convert fixture to model Currie, then machine got fail step short at 3 slots 4,5,6. 
- Remove the fixture and run DGN -> result: detect module 2 slot 8 and module 3 slot 6 fail
- Suspect module 3 slot 6 got issue -> swap control card between 2 module -> result: module 3 slot 6 still fail -> issue related to control card
- Vendor support repair module 2 slot 8 with relay -> then ok
- Vendor found the Finding probe at module 3 slot 6 got fail -> relay the finding probe -> result: ok', N'Possible root cause: 
- Relay Card & Finding probe wear-tear due to using long time with more than 30 years and this series II already end of life', N'- Got support from vendor to repair the failure parts', N'- Health check in quarterly 
- Upgrade machine from series II to series 6 (onhold due to WCM demand reduce)', N'1.7', N'null', N'null', N'Vu Pham', N'2022-03-10', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-18T08:41:35.377' AS DateTime), N'phamv5', N'HCM_LNG', N'Closed', 10.25, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (432, N'2022-10', NULL, N'TESTER_RELATED', N'RELAY CARD PROBLEM', N'- ICT05 Short card module 3 Slot 9, 2 
- MFG test single board (failure board retest after rework) at this time
', N'Possible root cause:
- The relay got issue due to too old
- MFG did not charge PCBA properly', N'- Replace the failure card
- Highlight - remind MFG to make sure all PCBA was discharge properly after rework before move to ICT', N'- Health check machine in quarter
- Improve the process discharge by ICT machine', N'0.39', N'null', N'null', N'Thanh Pham', N'2022-04-14', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-25T10:08:41.757' AS DateTime), N'2501157', N'HCM_LNG', N'In-progress
18-Mar-2022: Already implement auto discharge by ICT fixture for model EPS, AX
25-Mar-2022: ???', 2.33, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (433, N'2022-10', NULL, N'CHANGEOVER', N'CHANGEOVER', N'- Set program for S4x8W at bay 20
- First time this model S4x8W run at bay 20', N'- Model S4x8W is the first time run at AOI bay 20', N'- Set fiducial - fine turn program ', N'- Alight with planner & MFG for detail on plan running which model on which bay ahead -> so we will check the program ahead and have plan downtime accordingly.', N'0.47', N'null', N'null', N'Hoai Vu', N'2022-03-17', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-18T09:52:52.190' AS DateTime), N'phamv5', N'HCM_LNG', N'Closed', 1.42, N'AOI', N'AOI BAY 19', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (434, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.23', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER', NULL, 1.76, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (435, N'2022-10', NULL, N'SOFTWARE ISSUE', N'IMAGE/PICTURE', NULL, NULL, NULL, NULL, N'0.03', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER', NULL, 0.25, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (436, N'2022-10', NULL, N'PROGRAM DEVELOPMENT', N'OTHER', NULL, NULL, NULL, NULL, N'0.02', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SCHNEIDER', NULL, 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (437, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.2', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SES', NULL, 0.6, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (438, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'OTHER', NULL, NULL, NULL, NULL, N'0.08', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SES', NULL, 0.25, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (439, N'2022-10', NULL, N'PROGRAM DEVELOPMENT', N'CREATE PROGRAM', NULL, NULL, NULL, NULL, N'0.24', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_SIERAWIRELESS', NULL, 2.83, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (440, N'2022-10', NULL, N'SPEA-ATE', N'TE/ATE ADJUST MACHINE', N'Broken probes', N'E/I core clip stuck on the fixture causing core damage fall in fixture & damage the probes', N'- Repair the fixture
- Rescreen all units before loading to SPEA', N'ME highlight on the de-panel inspection to include checking proper lock of clip', N'0.49', N'null', N'null', N'Juanito Alinas', N'2022-03-07', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-18T10:40:40.293' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'Done', 3.72, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (441, N'2022-10', NULL, N'PROGRAM DEVELOPMENT', N'CREATE PROGRAM', N'Additional hours consumed in creating program on NPI build', N'No additional back-up HC within the WC to support AOI.
HC support for AOI was on leave on the day NPI run, while previous back-up tech already resigned.', N'Get support from SME to do the AOI program', N'- Ensure proper allocation of HC to support NPI is provided.
- Train additional tech per shift to support AOI.', N'0.29', N'null', N'null', N'Khanh Le', N'2022-04-29', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-18T10:50:43.190' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 1.75, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (442, N'2022-10', NULL, N'SPEA-ATE', N'SPEA STUCK PALLET', N'PCBA stuck at fixture''s hole', N'Root cause was due to PCB raw material. PCB hole is out of specification
Hole Specification: 3.5mm +/- 0.1 
Defective PCB measure 3.34mm', N'Check the affected DC & rescreen existing WIP', N'QE purge the affected DC', N'0.14', N'null', N'null', N'Hue Vo', N'2022-03-09', 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, CAST(N'2022-03-18T08:58:13.373' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'Done', 1.08, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (443, N'2022-10', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.05', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-17T16:23:00.223' AS DateTime), NULL, NULL, NULL, N'HCM_ZEBRA', NULL, 0.32, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (488, N'2022-11', NULL, N'FALSE CALL FINETUNING', N'OPTICAL LENS ISSUE', NULL, NULL, NULL, NULL, N'0.26', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-25T08:45:18.607' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 1.19, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (489, N'2022-11', NULL, N'FALSE CALL FINETUNING', N'CHANGEOVER', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-25T08:45:18.620' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (490, N'2022-11', NULL, N'SOFTWARE ISSUE', N'IMAGE/PICTURE', N'Not tranfer image ', N'Due to Aoi machine can''t link to Aoi review', N'Restart aoi machine ', N'Replace new machine ', N'0.15', N'null', N'null', N'dao pham', N'2022-05-15', 1, 1, CAST(N'2022-03-25T08:45:18.620' AS DateTime), NULL, CAST(N'2022-03-25T14:01:50.553' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 2, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (491, N'2022-11', NULL, N'SOFTWARE ISSUE', N'OTHER', N'software error GS1 and  the machine is frozen', N'Due to machine too old (>10 year) =>  low performance, run unstable', N'Restart the pc and tester', N'Replace with new machine ', N'0.1', N'null', N'null', N'dao pham', N'2022-05-15', 1, 1, CAST(N'2022-03-25T08:45:18.637' AS DateTime), NULL, CAST(N'2022-03-25T13:42:12.927' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 1.33, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (492, N'2022-11', NULL, N'NETWORK', N'NO MES RECORD DUE TO NETWORK', N'Board PASSED ICT but logfile can''t send to CNCS', N'Lost connect to PASSER: vnhcmm0app06\INSITU', N'Restart PC and Re-login to vnhcmm0app06 ', N'Deleted this host and then re-connect', N'0.05', N'null', N'null', N'Duc Le', N'2022-03-22', 1, 1, CAST(N'2022-03-25T08:45:18.637' AS DateTime), NULL, CAST(N'2022-03-25T13:23:47.067' AS DateTime), N'2385657', N'HCM_INGENICO', N'Done', 0.83, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (493, N'2022-11', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.15', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-25T08:45:18.653' AS DateTime), NULL, NULL, NULL, N'HCM_KEURIG', NULL, 0.92, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (494, N'2022-11', NULL, N'PC ISSUE', N'OS PROBLEM', N'PC restarts itself', N'Reboot tool of IT time up and restart PC', N'Check Reboot tool on head of shift and restart PC if have plan of Reboot tool', N'NA', N'0.11', N'NA', N'null', N'Huan_Phan5966', N'2022-03-28', 1, 1, CAST(N'2022-03-25T08:45:18.653' AS DateTime), NULL, CAST(N'2022-03-28T12:32:33.213' AS DateTime), N'3088504', N'HCM_KEURIG', N'Done', 0.67, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (495, N'2022-11', NULL, N'PROGRAM DEVELOPMENT', N'OTHER', N'New model', N'new model not have program', N'program development for new model', N'N/A', N'0.11', N'N/A', N'null', N'Toan_Tran2976', N'2022-03-28', 1, 1, CAST(N'2022-03-25T08:45:18.667' AS DateTime), NULL, CAST(N'2022-03-28T11:04:25.710' AS DateTime), N'3088504', N'HCM_KEURIG', N'Done', 0.67, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (496, N'2022-11', NULL, N'PM_CAL', N'PERIODIC_PM', N'4-Testers are scheduled for health check, this is done by CMD vendor under Service contract agreement. Normally the health check is done only for 2 hours but vendor CMD exceed with the Planned 2hrs declared to planner.', N'During Health Check found some failures on diagnostic test that need to repair. Most are related to pins cards and mint pin replacement.', N'Clean and replace mint pins and change some failed pins cards from consignment parts.', N'Daily and Monthly PM of testers must be execute correctly. SME team to Audit WC if PM are done correctly.', N'0.39', N'N/A', N'N/A', N'Michael', N'2022-03-31', 1, 1, CAST(N'2022-03-25T08:45:18.667' AS DateTime), NULL, CAST(N'2022-03-25T10:29:41.230' AS DateTime), N'2501157', N'HCM_SCHNEIDER', N'Open', 9.5, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (497, N'2022-11', NULL, N'TESTER_RELATED', N'PIN CARD PROBLEM', N'ICT#08  = stuck relay pin card (module 3 slot 3).
ICT#16 = fail pin card and change card.', N'Stuck relays on pins cards, Possible root cause still unidentified and close monitoring if related to Discharge Issue.
This happens for KALA S4 and NHA5038X models.', N'Change Tester Pins cards with consignment Parts.', N'No improvement have been done yet how to protect tester Pincards and we are  working with site SME to verify the disharge test that is possibly killing pin cards.', N'0.17', N'N/A', N'N/A', N'Michael', N'2022-04-15', 1, 1, CAST(N'2022-03-25T08:45:18.683' AS DateTime), NULL, CAST(N'2022-03-25T09:33:17.377' AS DateTime), N'2501157', N'HCM_SCHNEIDER', N'Open', 4.13, N'ICT', N'ICT', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (498, N'2022-11', NULL, N'FALSE CALL FINE TUNING', N'FF TRIGGER', NULL, NULL, NULL, NULL, N'0.48', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-25T08:45:18.700' AS DateTime), NULL, NULL, NULL, N'HCM_SIERAWIRELESS', NULL, 0.62, N'AXI', N'AXI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (499, N'2022-11', NULL, N'PC ISSUE', N'OTHER', N'PC issue', N'Full hard disk', N'clean hard disk & restart', N'To replace HDD to SSD Hard disk', N'0.08', N'null', N'null', N'Khanh Le', N'2022-04-26', 1, 1, CAST(N'2022-03-25T08:45:18.717' AS DateTime), NULL, CAST(N'2022-03-26T15:45:52.160' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 0.5, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (500, N'2022-11', NULL, N'PROGRAM DEVELOPMENT', N'NPI/ECN/ECO', N'should be count under planned downtime as program modification was done due to ECO', N'should be count under planned downtime as program modification was done due to ECO', N'should be count under planned downtime as program modification was done due to ECO', N'Arrange properly the schedule with planner/MFG', N'0.07', N'null', N'null', N'', N'2022-03-28', 1, 1, CAST(N'2022-03-25T08:45:18.717' AS DateTime), NULL, CAST(N'2022-03-26T15:47:59.657' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 0.42, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (501, N'2022-11', NULL, N'PROGRAM DEVELOPMENT', N'OTHER', N'should be count under planned downtime as program modification was done due to ECO', N'should be count under planned downtime as program modification was done due to ECO', N'should be count under planned downtime as program modification was done due to ECO', N'arrange properly the schedule with planner/mfg', N'0.05', N'null', N'null', N'khanh le', N'2022-03-28', 1, 1, CAST(N'2022-03-25T08:45:18.717' AS DateTime), NULL, CAST(N'2022-03-26T15:49:47.713' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 0.33, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (502, N'2022-50', NULL, N'Fixture_Related', N'Probes problem', N'Intermittent analog measurement', N'Misaligned probe TP384', N'Replace socket and probe', N'Put cover or push pins to prevent hitting probes', N'100', N'test1', N'test', N'Vu Pham', N'2022-03-17', 1, 1, CAST(N'2022-02-25T15:30:46.160' AS DateTime), NULL, CAST(N'2022-03-28T16:37:13.940' AS DateTime), N'1099969', N'HCM_LnG', N'Open', 0.5, N'ICT', N'ICT                                               ', N'Q32022223163833_2022325133310881_2022328163713764.xlsx;Form and Approval Flow_2022328154550138_2022328163642712.xlsx;')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (503, N'2022-12', NULL, N'CHANGEOVER', N'CHANGEOVER', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-28T08:00:02.857' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (504, N'2022-12', NULL, N'FALSE CALL FINETUNING', N'OPTICAL LENS ISSUE', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (505, N'2022-12', NULL, N'FALSE CALL FINETUNING', N'OTHER', N'finetune false call', N'many false call', N'finetune inline', N'finetune inline and monitor', N'0.06', N'null', N'null', N'dao pham', N'2022-04-28', 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, CAST(N'2022-03-28T14:00:12.403' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 0.75, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (506, N'2022-12', NULL, N'FALSE CALL FINETUNING', N'CHANGEOVER', N'finetune false call', N'many false call when change over', N'finetune inline', N'finetune inline and monitor', N'0.02', N'null', N'null', N'dao pham', N'2022-04-28', 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, CAST(N'2022-03-28T14:02:45.727' AS DateTime), N'voo', N'HCM_INGENICO', N'NA', 0.25, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (507, N'2022-12', NULL, N'SOFTWARE ISSUE', N'IMAGE/PICTURE', N'Not tranfer image', N'Aoi machine not link to aoi review', N'Restart aoi machine ', N'Need replace new machine due to this machine too old ( vitrox 2d)', N'0.01', N'null', N'null', N'Dao pham', N'2022-05-15', 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, CAST(N'2022-03-28T14:05:51.400' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 0.17, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (508, N'2022-12', NULL, N'FALSE CALL FINETUNING', N'OTHER', N'OCV Fail', N'New supplier', N'Add new OSV on library', N'N/A', N'0.07', N'ECMP000041', N'N/A', N'Toan_Tran2976', N'2022-03-28', 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, CAST(N'2022-03-28T11:06:25.827' AS DateTime), N'3088504', N'HCM_KEURIG', N'Done', 0.42, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (509, N'2022-12', NULL, N'FALSE CALL FINETUNING', N'FF TRIGGER', N'Bad Joint at MCU AS4820', N'Insuffsolder but QE approved', N'Adjust Joint Inspection', N'N/A', N'0.07', N'ECMPKMINI$PA', N'null', N'Toan_Tran2976', N'2022-03-28', 1, 1, CAST(N'2022-03-28T08:00:02.870' AS DateTime), NULL, CAST(N'2022-03-28T11:25:06.500' AS DateTime), N'3088504', N'HCM_KEURIG', N'null', 0.41, N'AOI', N'AOI', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (510, N'2022-12', NULL, N'FINETUNING', N'DIGITAL_TEST', N'- High false fail at step measure voltage at U13 with out of spec limit at all slots
   + Measured = 9.34 Vdc
   + Low limit = 9.4 Vdc
   + High limit = 11 Vdc
', N'- Possible root cause due to the method supply power to the board not properly
   + Correct method: power supply separate each chenal for each slots, this method apply for the most existing ICT fixture and so far no issue on step power
   + Not correct method: power supply 1 chanel for 3 slot, this method apply for 2 new fixture 72553 currie & 40-2462 Axe8W, and the step power unstable happen on these 2 fixture always', N'- Move the step U13 on the top of test sequence  ', N'- Modify fixture hardware & software to power supply separate each chenal for each slot for these 2 fixture 72553 currie & 40-2462 Axe8W', N'0.55', N'null', N'null', N'', N'2022-04-30', 1, 1, CAST(N'2022-03-28T08:00:02.887' AS DateTime), NULL, CAST(N'2022-04-01T08:22:00.130' AS DateTime), N'phamv5', N'HCM_LNG', N'Open', 3.33, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (511, N'2022-12', NULL, N'FIXTURE_RELATED', N'WIRING PROBLEM', N'- Happen on model P100001290 S2 MAIN
- At ICT03 TRI machine
- Fail at step contact during set up with node 285, 286 open', N'- The wiring at these 2 node 285, 286 broken 
- The wiring at these hitting and broken at vendor site while vendor bring this fixture out for modify on the top cover and bring back then got issue ', N'- Repair the the wiring at these 2 node', N'- Feed back the issue to vendor site for them to take the preventive action to avoid issue repeat in future ', N'0.15', N'null', N'null', N'', N'2022-03-25', 1, 1, CAST(N'2022-03-28T08:00:03.043' AS DateTime), NULL, CAST(N'2022-04-01T08:31:09.910' AS DateTime), N'phamv5', N'HCM_LNG', N'Closed', 0.92, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (512, N'2022-12', NULL, N'TEST JIG RELATED', N'TEST PIN ISSUE', N'Happen on tester name: VNHCMLGILPAL01
Problem: Slot 2 fail step Testing Firmware Version 
', N'- Contact unstable
- Test pins TP13 ,TP14, TP15, TP16 dirty with flux
- These 4 probes use at the via pin with many flux
- Process not allow to clean flux at these area
', N'- Change new probe at these 4 location

', N'- Clean probe at the first shift', N'0.11', N'null', N'null', N'', N'2022-03-21', 1, 1, CAST(N'2022-03-28T08:00:03.043' AS DateTime), NULL, CAST(N'2022-04-01T08:59:27.807' AS DateTime), N'phamv5', N'HCM_LNG', N'Closed', 0.83, N'FVT', N'ILP', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (513, N'2022-12', NULL, N'MACHINE_ERROR', N'OTHERS', N'ICT#08  =  short pin card in module 2 slot 5b', N'Stuck relays on pins cards, Possible root cause still unidentified and close monitoring if related to Discharge Issue.
This happens for KALA S4 and NHA5038X models.', N'Change Tester Pins cards with consignment Parts.', N'No improvement have been done yet how to protect tester Pincards and we are  working with site SME to verify the discharge test that is possibly killing pin cards.', N'0.25', N'N/A', N'N/A', N'', N'2022-04-15', 1, 1, CAST(N'2022-03-28T08:00:03.043' AS DateTime), NULL, CAST(N'2022-03-30T11:59:05.890' AS DateTime), N'dalipem', N'HCM_SCHNEIDER', N'Under monitoring', 6.08, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (514, N'2022-12', NULL, N'TESTER_RELATED', N'ASRU CARD PROBLEM', N'ICT#06  = Stuck up relay of ASRU card in module 3
', N'PC auto reboot during test , causing stuck up relay of ASRU card in module 3', N'Replaced ASRU Card', N'For monitoring of failure re-occurrence as during test, no prompt message of PC reboot was seen.  ', N'0.12', N'N/A', N'N/A', N'Mike', N'2022-04-30', 1, 1, CAST(N'2022-03-28T08:00:03.060' AS DateTime), NULL, CAST(N'2022-03-30T11:36:15.893' AS DateTime), N'dalipem', N'HCM_SCHNEIDER', N'Under monitoring', 2.78, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (515, N'2022-12', NULL, N'PM_CAL', N'PERIODIC_PM', N'ICT#13  =  Cal_PM exceeds the planned downtime hours', N'Vendor worked on 2 machines at the same time causing on overlapping of start up after Calibration', N'Finish the required calibration and PM. ', N'Work with service vendor to perform calibration of one machine at a time to avoid such re-occurrence. ', N'0.08', N'N/A', N'N/A', N'', N'2022-03-11', 1, 1, CAST(N'2022-03-28T08:00:03.060' AS DateTime), NULL, CAST(N'2022-03-30T11:46:18.407' AS DateTime), N'dalipem', N'HCM_SCHNEIDER', N'Closed', 2, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (516, N'2022-12', NULL, N'FINETUNING', N'FINETUNE NDF', N'Multiple false failure', N'unsuccessful loading of fixture/program at SPEA with limited support from local ATE', N'Contact ATE team for support, though take time as problem occur during night shift', N'Prepare a training material to provide Tech/DL for the proper loading of fixture/program to prevent this false failure', N'0.25', N'null', N'null', N'Khanh Le', N'2022-04-08', 1, 1, CAST(N'2022-03-28T08:00:03.060' AS DateTime), NULL, CAST(N'2022-03-30T17:23:22.040' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 2.25, N'ICT', N'ICT-SPEA', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (517, N'2022-12', NULL, N'FIXTURE_RELATED', N'PROBES PROBLEM', N'Broken socket', N'Stuck spring probe causing to damage the socket/receptacle & PCBA', N'Stop using the fixture & repair the socket', N'To orient ICT operator when encountered 2 consecutive same failure, operator have to call Test Tech to check the root cause of failure.', N'0.2', N'null', N'null', N'Khanh Le', N'2022-04-06', 1, 1, CAST(N'2022-03-28T08:00:03.060' AS DateTime), NULL, CAST(N'2022-03-30T17:11:10.083' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 1.84, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (518, N'2022-12', NULL, N'FIXTURE_RELATED', N'TESTJET PROBE PROBLEM', N'Intermittent Test jet failure', N'Root cause is still unknown since didn''t find abnormality during troubleshooting.
Check/clean test jet, check wiring, found no abnormality', N'retest failing units', N'Monitor test results and if encountered with the same problem, will request support from SME to identify the root cause', N'0.11', N'null', N'null', N'khanh le', N'2022-04-08', 1, 1, CAST(N'2022-03-28T08:00:03.060' AS DateTime), NULL, CAST(N'2022-03-30T17:28:28.810' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 1, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (519, N'2022-13', NULL, N'PROGRAM DEVELOPMENT', N'CREATE PROGRAM', NULL, NULL, NULL, NULL, N'0.33', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-04T08:00:01.477' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 1.5, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (520, N'2022-13', NULL, N'SOFTWARE ISSUE', N'VVTS', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-04T08:00:01.477' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (521, N'2022-13', NULL, N'FALSE CALL FINETUNING', N'OPTICAL LENS ISSUE', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-04T08:00:01.477' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (522, N'2022-13', NULL, N'FALSE CALL FINETUNING', N'OTHER', NULL, NULL, NULL, NULL, N'0.04', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-04T08:00:01.493' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.17, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (523, N'2022-13', NULL, N'SOFTWARE ISSUE', N'OTHER', N'software v510 not run', N'due to the software  v510 have  issue ', N'copy software v510_bk of this machine and restart pc', N'Replace new machine ', N'0.11', N'null', N'null', N'Dao Pham', N'2022-05-15', 1, 1, CAST(N'2022-04-04T08:00:01.493' AS DateTime), NULL, CAST(N'2022-04-06T16:14:56.057' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 1.5, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (524, N'2022-13', NULL, N'SOFTWARE ISSUE', N'V510', N'the software v510 not run', N'Due to machine too old to software error', N'Replace with Disk HD backup', N'Replace new machine', N'0.09', N'null', N'null', N'Dao Pham', N'2022-05-15', 1, 1, CAST(N'2022-04-04T08:00:01.493' AS DateTime), NULL, CAST(N'2022-04-06T16:18:46.717' AS DateTime), N'voo', N'HCM_INGENICO', N'open', 1.25, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (525, N'2022-13', NULL, N'CHANGEOVER', N'CHANGEOVER', N'Aoi not inspection', N'Fiducial mark not detect', N'Adjust fiducial mark', N'Monitor on this', N'0.07', N'null', N'null', N'Dao Pham', N'2022-04-03', 1, 1, CAST(N'2022-04-04T08:00:01.493' AS DateTime), NULL, CAST(N'2022-04-07T08:59:38.673' AS DateTime), N'voo', N'HCM_INGENICO', N'close', 1, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (526, N'2022-13', NULL, N'FIXTURE_RELATED', N'RECEPTACLE PROBLEM', NULL, NULL, NULL, NULL, N'0.15', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-04T08:00:01.493' AS DateTime), NULL, NULL, NULL, N'HCM_LNG', NULL, 0.92, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (527, N'2022-13', NULL, N'MACHINE_ERROR', N'OTHERS', N'Short Pin cards in module 3 slot 4', N'Stuck up relays in pin cards. As per investigation, it was due to the delay in discharging of C108 for KALA S5 Drive. 
', N'Replaced affected pin cards', N'Worked out with customer to decrease the compared value of discharge capacitor voltage from 2V to 0.5V so as to make sure that the cap is discharged fully. ', N'0.22', N'N/A', N'N/A', N'mike', N'2022-04-15', 1, 1, CAST(N'2022-04-04T08:00:01.507' AS DateTime), NULL, CAST(N'2022-04-08T13:53:01.310' AS DateTime), N'2501157', N'HCM_SCHNEIDER', N'For monitoring', 5.37, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (528, N'2022-13', NULL, N'OTHER ISSUE', N'OTHER', N'FVT P1020946 is running unstable at Q9 turn on test step(The UUT must be in Reset mode while testing this Q9 function.). During the validation, the channel signal of Sensor Board is opposite to the ideal logic. The contact of the probe pin signal to enable the Q9 is good and also the wiring is good, probe contact test point DS of Q9 is also good. We perform to isolate the signal of the output''s sensor board & detect the signal of UUT Reset mode is wrong (0V, should be 3v3). We checked the test point of probe pin reset mode -> misalignment -> replace socket & probe.', N'Top Probe pin UUT RST_N was misalignment/bent, suspect the test probe was bent by the operator''s glove during put in to the fixture or take out the unit from fixture.
', N'Removed and replaced the socket & test probe.', N'Re-training the operator when they put the unit into the fixture probe.
Proposal: to place a protection plate on the top of the test fixture.
', N'0.01', N'null', N'null', N'Bel Nguyen', N'2022-04-01', 1, 1, CAST(N'2022-04-04T08:00:01.507' AS DateTime), NULL, CAST(N'2022-04-08T09:24:41.633' AS DateTime), N'quochuyn', N'HCM_ZEBRA', N'Completed', 2, N'FVT', N'FVT PCBA', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (529, N'2022-13', NULL, N'OTHER ISSUE', N'OTHER', N'model P1107481 failed at Test USB enumeration step. PC does not recognize usb port and could not get the UUT device ID. PC need to be restarted but the PC performance is bad (takes long time to shutdown and boot up) due to using the HDD', N'the issue occur after test a shorted pins of USB port of a unit.', N'Restart PC.', N'Collect defect unit which cause the PC''s port damage and feedback the ME to fix the process issue (Wave and PWTU).
Use the USB Isolator to protect the PC''s USB port. And request to have an USB isolator during fabricating the new test fixture/tester.
Replace the PC''s HDD by the SSD.', N'0.01', N'N/A', N'N/A', N'Linh Nguyen', N'2022-04-30', 1, 1, CAST(N'2022-04-04T08:00:01.507' AS DateTime), NULL, CAST(N'2022-04-08T11:42:20.470' AS DateTime), N'quochuyn', N'HCM_ZEBRA', N'On-Progress', 1.42, N'FVT', N'FVT BOOT UP', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (530, N'2022-13', NULL, N'OTHER ISSUE', N'OTHER', N'Argo - Model: DS9308 -  FAT cannot perform the test as normal. The testing failed at AIM test', N'air pipe terminal was broken leads to the target plate cannot be pulled up to proceed the nest test which is the AIM test.', N'Replace new air pipe terminal.', N'To apply the PUC system to monitor and trigger the part usage for replacement.', N'0', N'N/A', N'N/A', N'Duong Le', N'2022-04-01', 1, 1, CAST(N'2022-04-04T08:00:01.507' AS DateTime), NULL, CAST(N'2022-04-08T09:49:08.460' AS DateTime), N'2501157', N'HCM_ZEBRA', N'Wk13: 
Fixed the air pipe terminal.
On going proliferate PUC to Zebra.', 0.5, N'FVT', N'ARGO FAT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (531, N'2022-14', NULL, N'FALSE CALL FINETUNING', N'OTHER', N'FALSE CALL ', N'The intermmiten projector cause noise 3D image that affect to inspection result', N'Stop the AOI testing
Investigate and adjust AOI parameters accordingly
', N'-Purchase replacement projector - In progress
plan upgrade 1st machine on 29.Apr', N'0.06', N'null', N'null', N'Duong_TE', N'', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-12T11:00:42.170' AS DateTime), N'dangvied', N'HCM_ACLARA', N'In progress', 0.25, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (532, N'2022-14', NULL, N'HARDWARE ISSUE', N'OTHER', N'FALSE CALL ', N'The intermmiten projector cause noise 3D image that affect to inspection result', N'Stop the AOI testing
Investigate and adjust AOI parameters accordingly
', N'-Purchase replacement projector - In progress
plan upgrade 1st machine on 29.Apr', N'0.04', N'null', N'null', N'', N'', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-12T11:01:25.953' AS DateTime), N'dangvied', N'HCM_ACLARA', N'In progress', 0.17, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (533, N'2022-14', NULL, N'FALSE CALL FINETUNING', N'OTHER', NULL, NULL, NULL, NULL, N'0.03', NULL, NULL, NULL, NULL, 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, NULL, NULL, N'HCM_ACLARA', NULL, 0.13, N'AOI', N'GE103X677013', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (534, N'2022-14', NULL, N'FINETUNING', N'FINETUNE NDF', N'Contact issue with the connector''s pin', N'Connector P5952 got deviation to cut the length of the pin after assembly', N'replace probes to have better contact with the connector''s pin', N'Need to review with the team the long term solution for this material for proper cutting of connector''s pin', N'0.13', N'null', N'null', N'Khanh Le', N'2022-04-22', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-13T08:51:29.460' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 1, N'ICT', N'ICT', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (535, N'2022-14', NULL, N'FIXTURE_RELATED', N'PROBES PROBLEM', N'SPEA fail on D403 CRD for slot 1', N'still under investigation', N'retest unit to other slot', N'TBD, still under investigation', N'0.06', N'null', N'null', N'Minh Tran', N'2022-04-15', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-13T09:02:40.110' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 0.5, N'ICT', N'ICT-SPEA', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (536, N'2022-14', NULL, N'SOFTWARE ISSUE', N'V510', N'Slow in transferring image to VVTS', N'Computer HDD issue', N're-upload', N'Replace HDD with SDD', N'0.08', N'null', N'null', N'Khanh Le', N'2022-05-20', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-13T08:57:45.003' AS DateTime), N'2309514', N'HCM_SOLAREDGE', N'open', 0.42, N'AOI', N'AOI', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (537, N'2022-14', NULL, N'TESTER EVALUATION', N'CPK', N'FVT2 stand-alone fixture evaluation', N'Due to the MAC address issue, so we have to perform some evaluated activity requests from QE & global team.', N'', N'', N'0.04', N'null', N'null', N'', N'2022-04-13', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-13T10:00:28.267' AS DateTime), N'1162576', N'HCM_ZEBRA', N'Done', 7, N'FVT', N'FVT PCBA', N'')
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (538, N'2022-14', NULL, N'OTHER ISSUE', N'OTHER', N'Issue on label printed by printer at SFA1 station, the label printed out was blurry', N'Due to printed head was damaged with quality of label file is not good that cause to label printed out blurried', N'Replace spare printer and re-design label', N'Replace new print head for failed printer at rework station, verify it and change back to original.', N'0.01', N'N/A', N'N/A', N'Tuyen Bui', N'2022-04-04', 1, 1, CAST(N'2022-04-11T08:00:03.050' AS DateTime), NULL, CAST(N'2022-04-12T16:11:31.033' AS DateTime), N'2729393', N'HCM_ZEBRA', N'Done', 2.83, N'FVT', N'SFA1', NULL)
INSERT [dbo].[Action] ([actionId], [yyww], [custId], [category], [details], [problemDescription], [rootCause], [containmentAction], [CAPA], [overallImpact], [ECNPCN], [FIA], [responsible], [commitDate], [statusId], [isActive], [creationDate], [createdBy], [updateDate], [updatedBy], [custName], [remark], [totalDT], [station], [stationName], [fileName]) VALUES (539, N'2022-14', NULL, N'TEST PM RELATED', N'OTHER', N'PM activity', N'PM activity', N'PM activity', N'Rodel will update the web service to record PM activity to planned downtime.', N'0.01', N'null', N'null', N'', N'2022-04-16', 1, 1, CAST(N'2022-04-11T08:00:03.067' AS DateTime), NULL, CAST(N'2022-04-13T09:58:10.520' AS DateTime), N'1162576', N'HCM_ZEBRA', N'On progress', 2.25, N'FVT', N'FVT PCBA', N'')
SET IDENTITY_INSERT [dbo].[Action] OFF
GO
SET IDENTITY_INSERT [dbo].[Master_Status] ON 

INSERT [dbo].[Master_Status] ([statusId], [status], [colorCode], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive]) VALUES (1, N'Open', N'#FFDB4C', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Master_Status] ([statusId], [status], [colorCode], [creationDate], [createdBy], [updateDate], [updatedBy], [isActive]) VALUES (2, N'Closed', N'green', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Master_Status] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_Role_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Access_Role_get]
  as
  begin
	  set nocount on;
	  SELECT [roleID]
		  ,[roleName]
	  FROM [dbo].[Access_Role]
	  WHERE isActive = 1
  end
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_UserRole_delete]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[usp_Access_UserRole_delete]
@in_userRoleId int,
@in_updatedBy varchar(10)
as
begin
	update [dbo].[Access_UserRole]
	set isActive = 0,
	updateDate = GETDATE(),
	updatedBy = @in_updatedBy
	where userRoleId = @in_userRoleId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_UserRole_Get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Access_UserRole_Get]
(@in_NTLogin varchar(30) = null)
as
begin
	set nocount on;
	select ur.*, r.roleName
	,e.displayName UserName, e.email UserEmail
	--,c.custName
	from [dbo].[Access_UserRole] ur
	left join [dbo].[Access_Role] r	on ur.roleID = r.roleID	
	--left join [CommonTE].[dbo].[Customer] c on c.custId = ur.custID
	left join [CommonTE].[dbo].[Employee] e on e.[NTLogin] = ur.[NTLogin]
	where ur.isActive = 1
	and r.isActive = 1
	and (ur.[NTLogin] = @in_NTLogin or @in_NTLogin is null)

end
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_UserRole_Get_By_Id]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Access_UserRole_Get_By_Id]
(@in_UserRoleID int = 0)
as
begin
	set nocount on;
	select ur.*, r.roleName
	,e.displayName UserName, e.email UserEmail
	--,c.custName
	from [dbo].[Access_UserRole] ur
	left join [dbo].[Access_Role] r	on ur.roleID = r.roleID	
	--left join [CommonTE].[dbo].[Customer] c on c.custId = ur.custID
	left join [CommonTE].[dbo].[Employee] e on e.[NTLogin] = ur.[NTLogin]
	where ur.isActive = 1
	and r.isActive = 1
	and (userRoleId = @in_UserRoleID or @in_UserRoleID = 0)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_UserRole_insert]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Access_UserRole_insert]
(@in_NTLogin varchar(10)	
	, @in_roleID int
	, @in_plantID int
    , @in_custName varchar(100)
    , @in_createdBy varchar(10)
	)
as
begin
insert into [dbo].[Access_UserRole] ([NTLogin], [roleID], [plantID], [custName], [creationDate], [createdBy], [isActive])
values (@in_NTLogin, @in_roleID, @in_plantID, @in_custName, GETDATE(), @in_createdBy, 1)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Access_UserRole_update]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Access_UserRole_update]
(@in_userRoleId int
,@in_plantID int
,@in_custName varchar(100)
,@in_roleID int
,@in_updatedBy varchar(10))
as
begin
	update [Access_UserRole] 
	set [custName] = @in_custName
	,[roleID] = @in_roleID
	,[updateDate] = GETDATE()
    ,[updatedBy] = @in_updatedBy
	where userRoleId = @in_userRoleId and isActive = 1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Action_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Action_get]
(
@in_actionId int = 0
,@in_custName varchar(50) = null
,@in_yyww varchar(10) = null
,@in_category varchar(max) = null
,@in_station varchar(50) = null
,@in_stationName varchar(50) = null
)
as
begin
	SELECT [actionId]
      ,[yyww]
      ,[custId]
	  ,custName
      ,[category]
      ,[details]
	  ,[totalDT]
      ,[problemDescription]
      ,[rootCause]
      ,[containmentAction]
      ,[CAPA]
      ,[overallImpact]
      ,[ECNPCN]
      ,[FIA]
      ,[responsible]
      ,[commitDate]
	  ,remark
	  ,a.[statusId]
      ,[status]
	  ,ColorCode
	  ,[station]
      ,[stationName]
	  ,fileName
  FROM Action a
  left join Master_Status ms on ms.statusId = a.statusId
  where a.[isActive] = 1 and ms.[isActive] = 1
  and (actionId = @in_actionId or @in_actionId = 0)
  and (custName = @in_custName or @in_custName is null)
  and (yyww = @in_yyww or @in_yyww is null)
  and (category = @in_category or @in_category is null)
  and (station = @in_station or @in_station is null)
  and (stationName = @in_stationName or @in_stationName is null)
  order by a.creationDate desc
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Action_insert]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Action_insert] 
  (
  @in_yyww varchar(10)
  ,@in_custName varchar(50)
  ,@in_station varchar(50)
  ,@in_stationName varchar(100)
  ,@in_category varchar(100)
  ,@in_details varchar(100)
  ,@in_totalDT float
  ,@in_impact float
  )
  as
  begin
		declare @yyww varchar(10) = null
		if (datepart(week, getdate()) - 2) <= 0 
			set @yyww = CONCAT('52', '-' , datepart(year, getdate()) - 1)
		else 
			set @yyww = CONCAT( datepart(week, getdate()) - 2, '-' , datepart(YEAR, getdate()))
			--select @wwyy
	  if not exists (select * from [Action] where [custName] = @in_custName and yyww = @yyww and [category] = @in_category and details = @in_details)
	  begin
		insert into [Action] ([custName], station, stationName, [category], [details], [totalDT], [overallImpact], [isActive] ,creationDate, yyww, statusId) values (@in_custName, @in_station, @in_stationName, @in_category ,@in_details ,@in_totalDT, @in_impact, 1, GETDATE(), @in_yyww, 1)
	  end
  end



GO
/****** Object:  StoredProcedure [dbo].[usp_Acton_update]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Acton_update]
(
	@in_actionId int       
	,@in_problemDescription varchar(max)
	,@in_rootCause varchar(max)
	,@in_containmentAction varchar(max)
	,@in_correctiveandPreventiveAction varchar(max)
	,@in_ECNPCN varchar(max)
	,@in_FIA varchar(max)
	,@in_responsible varchar(max)
	,@in_commitDate varchar(max)
	,@in_remark varchar(max)
	,@in_fileName varchar(max)
	,@in_updatedBy varchar(10)
)
as
begin
	set nocount on;
	declare @fileName varchar(max)
	set @fileName = (select fileName from Action where actionId = @in_actionId)
	update action
	set [problemDescription] = @in_problemDescription
      ,[rootCause] = @in_rootCause
      ,[containmentAction] = @in_containmentAction
      ,[CAPA] = @in_correctiveandPreventiveAction
      ,[ECNPCN] = @in_ECNPCN
      ,[FIA] = @in_FIA
      ,[responsible] = @in_responsible
      ,[commitDate] = @in_commitDate
	  ,[updateDate] = GETDATE()
	  ,[remark] = @in_remark
	  ,fileName = CONCAT( @in_fileName , @fileName) --,fileName = @in_fileName + @fileName
      ,[updatedBy] = @in_updatedBy
	  where actionId = @in_actionId
end

GO
/****** Object:  StoredProcedure [dbo].[usp_Category_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Category_get]
@in_custName varchar(50)
as
begin
select distinct [category] from [Action] where custName = @in_custName and isActive = 1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Customer_Get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Customer_Get] 
@in_ntlogin varchar(20)
as
begin
select distinct a.custName from Action a
left join [dbo].[Access_UserRole] ur on (ur.custName = a.custName or ur.custName = 'None')
where a.isActive = 1 and ur.isActive = 1  and ur.NTLogin = @in_ntlogin
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Downtime_update]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Downtime_update]
as
begin
	declare @ww int = 0
	set @ww = (select DATEPART(week, GETDATE()) - 2)
	--select @ww
	select * from (
		select yyww,WorkCell,[DowntimeCategory],[DowntimeDetails],Station,StationName,avaiTime, sum(Hours) TotalDT, format(sum(Hours)/avaiTime * 100 *1.0,'N2') impact		
		,RANK() over(PARTITION BY yyww,WorkCell ORDER BY sum(Hours) desc) as rank
		from (
			SELECT CONCAT( datepart(year,[Date]), '-', RIGHT('00000' + CONVERT(VARCHAR(7), week), 2)) yyww 
				,wc.WCName WorkCell
				,ac.AreaName Station
				,sc.StationName		
				,dc.Description DowntimeCategory
				,dd.Description DowntimeDetails	
				,b.totalTester* b.workinghours* b.WorkingDays avaiTime
				,[Hours]
			FROM [eDowntime].[dbo].[DowntimeData] d
			left join [dbo].[WorkCellConfig] wc on wc.WorkCellID = d.WorkCellID
			left join [dbo].[StationConfig] sc on sc.StationID = d.StationID 
			left join [dbo].[AreaConfig] ac on ac.AreaID = d.AreaID
			left join [dbo].DowntimeCategories dc on dc.DTCategoryID = d.DTCategoryID
			left join [dbo].[DowntimeDetails] dd on dd.DTDetailID = d.DTDetailID
			left join (SELECT CONCAT(Year, '-',WorkWeek) yyww 
				  ,wc.WCName
				  ,t.[AreaID]			
				  ,a.totalTester      
				  ,21.5 workinghours
				  ,[WorkingDays] 
			  FROM [eDowntime].[dbo].[TotalWHoursImpactConfig] t
			  left join [dbo].[WorkCellConfig] wc on wc.WorkCellID = t.WorkCellID
			  left join (SELECT 
				  t.[WorkCellID], wc.WCName,t.[AreaID]
				  ,ac.AreaName
				  ,count([TesterName]) totalTester 
			  FROM [eDowntime].[dbo].[TesterConfig] t
			  left join [dbo].[WorkCellConfig] wc on wc.WorkCellID = t.WorkCellID
			  left join [dbo].[AreaConfig] ac on ac.AreaID = t.AreaID
			  where t.[Active] = 1 and wc.Active = 1 and ac.Active = 1
			  group by t.[WorkCellID], wc.WCName,ac.AreaName,t.[AreaID]) a on a.WCName = wc.WCName and a.AreaID = t.AreaID
			  where t.Active = 1 and wc.Active = 1) b on b.WCName = wc.WCName and b.yyww = CONCAT( datepart(year,[Date]), '-',Week) and b.AreaID = d.AreaID
			where d.Active = 1 and wc.Active = 1 and ac.Active = 1 and dc.Active = 1 and dd.Active = 1 and sc.Active = 1 --and mc.Active = 1 and tc.Active = 1
			and d.IsValidate = 1 and Hours != 0
			and week = @ww ) a
			--where avaiTime is not null
			group by yyww,Station,StationName,WorkCell,[DowntimeCategory],[DowntimeDetails],avaiTime--,sum(Hours)/avaiTime
	)b
	where rank < 4		
end
GO
/****** Object:  StoredProcedure [dbo].[usp_StationName_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_StationName_get]
@in_station varchar(10) = null
as
begin
	SELECT distinct [stationName]
	FROM [eDowntime].[dbo].[Action] where (station = @in_station or @in_station is null) and  isActive = 1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UserRole_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_UserRole_get]
	-- Add the parameters for the stored procedure here	
	@in_NTLogin varchar(30) = null
AS
BEGIN
	set nocount on;
	if exists (select * from [Access_UserRole] ur where ur.NTLogin = @in_NTLogin and isActive = 1) 
	begin
		select ur.NTLogin, ur.roleID, ur.custID, ur.plantID
			,r.roleName
			,e.displayName userName
			,e.email userEmail
			,c.custName
			from  [CommonTE].[dbo].[Employee] e 
			left join  [dbo].[Access_UserRole] ur on e.[NTLogin] = ur.[NTLogin] --)
			left join [dbo].[Access_Role] r	on ur.roleID = r.roleID	
			--left join [dbo].[Master_Customer] c on c.custId = ur.custID	
			left join [CommonTE].[dbo].[Customer] c on c.custId = ur.custID	
			where r.isActive = 1
			and ur.isActive = 1
			and ur.[NTLogin] = @in_NTLogin or @in_NTLogin is null		
	end
	else 
	begin
		select e.NTLogin, null roleID, null custID, null plantID
			,'' roleName
			,e.displayName userName
			,e.email userEmail
			,'' custName
			from  [CommonTE].[dbo].[Employee] e 
			where e.[NTLogin] = @in_NTLogin or @in_NTLogin is null
	end

END

GO
/****** Object:  StoredProcedure [dbo].[usp_WorkWeek_get]    Script Date: 4/14/2022 10:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_WorkWeek_get]
@in_custName varchar(50)
as
begin
select distinct [yyww] from [Action] where custName = @in_custName and isActive = 1 order by [yyww] desc
end
GO
