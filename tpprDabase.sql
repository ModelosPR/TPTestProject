
/****** Object:  Table [dbo].[CoursePayments]******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoursePayments](
	[ID_CoursePayments] [int] IDENTITY(1,1) NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ID_Student] [int] NOT NULL,
	[Payment] [money] NOT NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CoursePayments] PRIMARY KEY CLUSTERED 
(
	[ID_CoursePayments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Courses] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID_Course] [int] IDENTITY(1,1) NOT NULL,
	[Course] [nvarchar](150) NOT NULL,
	[Cost] [money] NOT NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID_Course] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[StudentCourses] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourses](
	[ID_StudentCourse] [int] IDENTITY(1,1) NOT NULL,
	[ID_Student] [int] NOT NULL,
	[ID_Course] [int] NOT NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_StudentCourse] PRIMARY KEY CLUSTERED 
(
	[ID_StudentCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Students] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID_Student] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](256) NOT NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[CoursePayments] ON 
GO
INSERT [dbo].[CoursePayments] ([ID_CoursePayments], [ID_Course], [ID_Student], [Payment], [ModifiedBy], [ModifiedOn]) VALUES (1, 1, 1, 575.0000, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CoursePayments] ([ID_CoursePayments], [ID_Course], [ID_Student], [Payment], [ModifiedBy], [ModifiedOn]) VALUES (2, 2, 3, 200.7500, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CoursePayments] ([ID_CoursePayments], [ID_Course], [ID_Student], [Payment], [ModifiedBy], [ModifiedOn]) VALUES (3, 3, 2, 725.0000, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CoursePayments] ([ID_CoursePayments], [ID_Course], [ID_Student], [Payment], [ModifiedBy], [ModifiedOn]) VALUES (4, 2, 3, 480.0000, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CoursePayments] ([ID_CoursePayments], [ID_Course], [ID_Student], [Payment], [ModifiedBy], [ModifiedOn]) VALUES (5, 1, 4, 850.5000, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CoursePayments] OFF
GO


SET IDENTITY_INSERT [dbo].[Courses] ON 
GO
INSERT [dbo].[Courses] ([ID_Course], [Course], [Cost], [ModifiedBy], [ModifiedOn]) VALUES (1, N'Accounting & Financ', 1500.0000, NULL, CAST(N'2018-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Courses] ([ID_Course], [Course], [Cost], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Agriculture & Forestry', 1300.0000, NULL, CAST(N'2018-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Courses] ([ID_Course], [Course], [Cost], [ModifiedBy], [ModifiedOn]) VALUES (3, N'Anatomy & Physiology', 1950.5000, NULL, CAST(N'2018-03-18T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO


SET IDENTITY_INSERT [dbo].[StudentCourses] ON 
GO
INSERT [dbo].[StudentCourses] ([ID_StudentCourse], [ID_Student], [ID_Course], [ModifiedBy], [ModifiedOn]) VALUES (1, 1, 1, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[StudentCourses] ([ID_StudentCourse], [ID_Student], [ID_Course], [ModifiedBy], [ModifiedOn]) VALUES (2, 2, 3, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[StudentCourses] ([ID_StudentCourse], [ID_Student], [ID_Course], [ModifiedBy], [ModifiedOn]) VALUES (3, 3, 2, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[StudentCourses] ([ID_StudentCourse], [ID_Student], [ID_Course], [ModifiedBy], [ModifiedOn]) VALUES (4, 4, 1, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[StudentCourses] ([ID_StudentCourse], [ID_Student], [ID_Course], [ModifiedBy], [ModifiedOn]) VALUES (5, 4, 3, NULL, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[StudentCourses] OFF
GO


SET IDENTITY_INSERT [dbo].[Students] ON 
GO
INSERT [dbo].[Students] ([ID_Student], [StudentName], [ModifiedBy], [ModifiedOn]) VALUES (1, N'Juan Santiago', NULL, CAST(N'2018-04-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Students] ([ID_Student], [StudentName], [ModifiedBy], [ModifiedOn]) VALUES (2, N'Maria Garcia', NULL, CAST(N'2018-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Students] ([ID_Student], [StudentName], [ModifiedBy], [ModifiedOn]) VALUES (3, N'Sonia Fernández', NULL, CAST(N'2018-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Students] ([ID_Student], [StudentName], [ModifiedBy], [ModifiedOn]) VALUES (4, N'Jose Matos', NULL, CAST(N'2018-04-14T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Students] OFF
GO

ALTER TABLE [dbo].[CoursePayments]  WITH CHECK ADD  CONSTRAINT [FK_CoursePayments_Courses] FOREIGN KEY([ID_Course])
REFERENCES [dbo].[Courses] ([ID_Course])
GO

ALTER TABLE [dbo].[CoursePayments] CHECK CONSTRAINT [FK_CoursePayments_Courses]
GO

ALTER TABLE [dbo].[CoursePayments]  WITH CHECK ADD  CONSTRAINT [FK_CoursePayments_Students] FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Students] ([ID_Student])
GO

ALTER TABLE [dbo].[CoursePayments] CHECK CONSTRAINT [FK_CoursePayments_Students]
GO

ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Courses] FOREIGN KEY([ID_Course])
REFERENCES [dbo].[Courses] ([ID_Course])
GO

ALTER TABLE [dbo].[StudentCourses] CHECK CONSTRAINT [FK_StudentCourse_Courses]
GO

ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourses_Students] FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Students] ([ID_Student])
GO

ALTER TABLE [dbo].[StudentCourses] CHECK CONSTRAINT [FK_StudentCourses_Students]
GO
