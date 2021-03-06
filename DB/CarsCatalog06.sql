USE [CarCatalog]
GO
/****** Object:  Table [dbo].[AcountTypes]    Script Date: 02/12/2017 21:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcountTypes](
	[AccountTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AcountTypes] PRIMARY KEY CLUSTERED 
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 02/12/2017 21:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTypes](
	[VehicleType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_VehicleTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/12/2017 21:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Phone] [nvarchar](100) NULL,
	[AccountTypeId] [int] NOT NULL,
	[FacebookToken] [nvarchar](500) NULL,
	[Active] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 02/12/2017 21:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[AdsId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleType] [int] NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[MileageKM] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[AdsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 02/12/2017 21:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[AdsId] [int] NOT NULL,
	[FileReference] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Users_AccountTypes]    Script Date: 02/12/2017 21:27:30 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AccountTypes] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AcountTypes] ([AccountTypeId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AccountTypes]
GO
/****** Object:  ForeignKey [FK_Ads_Users]    Script Date: 02/12/2017 21:27:30 ******/
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_Users]
GO
/****** Object:  ForeignKey [FK_Ads_VehicleType]    Script Date: 02/12/2017 21:27:30 ******/
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_VehicleType] FOREIGN KEY([VehicleType])
REFERENCES [dbo].[VehicleTypes] ([VehicleType])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_VehicleType]
GO
/****** Object:  ForeignKey [FK_Images_Ads]    Script Date: 02/12/2017 21:27:30 ******/
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Ads] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([AdsId])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Ads]
GO
