USE [master]
GO
/****** Object:  Database [SmartDB]    Script Date: 09/18/2016 16:09:02 ******/
CREATE DATABASE [SmartDB] ON  PRIMARY 
( NAME = N'SmartDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SmartDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SmartDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SmartDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SmartDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SmartDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SmartDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SmartDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SmartDB] SET ARITHABORT OFF
GO
ALTER DATABASE [SmartDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SmartDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SmartDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SmartDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SmartDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SmartDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SmartDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SmartDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SmartDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SmartDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SmartDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [SmartDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SmartDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SmartDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SmartDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SmartDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SmartDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SmartDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SmartDB] SET  READ_WRITE
GO
ALTER DATABASE [SmartDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SmartDB] SET  MULTI_USER
GO
ALTER DATABASE [SmartDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SmartDB] SET DB_CHAINING OFF
GO
USE [SmartDB]
GO
/****** Object:  Table [dbo].[ProductTB]    Script Date: 09/18/2016 16:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductTB](
	[ProductID] [int] NULL,
	[ProductNumber] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[ProductClass] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CLientIDToken] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (11, N'2', N'Book 2', N'Green', N'A', CAST(200.00 AS Decimal(18, 2)), N'Book 2', CAST(0x0000A685003EC970 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (10, N'1', N'Book 1', N'Green', N'A', CAST(100.00 AS Decimal(18, 2)), N'Book 1', CAST(0x0000A685003EA51C AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (12, N'3', N'Book 3', N'Green', N'B', CAST(300.00 AS Decimal(18, 2)), N'Book 3', CAST(0x0000A685003EF5F8 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (13, N'4', N'Book4', N'Red', N'A', CAST(400.00 AS Decimal(18, 2)), N'Book4', CAST(0x0000A685004153D4 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (19, N'10', N'Book10', N'Red', N'A', CAST(1000.00 AS Decimal(18, 2)), N'Book10', CAST(0x0000A6850043425C AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (14, N'5', N'Book5', N'Red', N'A', CAST(500.00 AS Decimal(18, 2)), N'Book5', CAST(0x0000A68500416694 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (15, N'6', N'Book6', N'Red', N'A', CAST(600.00 AS Decimal(18, 2)), N'Book6', CAST(0x0000A68500418D40 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (17, N'8', N'Book8', N'Red', N'A', CAST(800.00 AS Decimal(18, 2)), N'Book8', CAST(0x0000A6850041AE10 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (16, N'7', N'Book7', N'Red', N'A', CAST(700.00 AS Decimal(18, 2)), N'Book7', CAST(0x0000A68500419DA8 AS DateTime), N'2')
INSERT [dbo].[ProductTB] ([ProductID], [ProductNumber], [Name], [Color], [ProductClass], [Price], [Description], [CreatedDate], [CLientIDToken]) VALUES (18, N'9', N'Book9', N'Red', N'A', CAST(900.00 AS Decimal(18, 2)), N'Book9', CAST(0x0000A68500421FBC AS DateTime), N'2')
/****** Object:  Table [dbo].[ClientRegistration]    Script Date: 09/18/2016 16:09:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientRegistration](
	[RegistrationID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Gender] [char](1) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Mobileno] [varchar](10) NULL,
	[EmailID] [varchar](50) NULL,
	[Createddate] [datetime] NULL,
 CONSTRAINT [PK_ClientRegistration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClientRegistration] ON
INSERT [dbo].[ClientRegistration] ([RegistrationID], [FirstName], [Lastname], [Gender], [Username], [Password], [Mobileno], [EmailID], [Createddate]) VALUES (1, N'Saineshwar', N'bageri', N'M', N'saineshwar', N'et3HqIkdUefzPl+lbxhPeQ==', N'9123456789', N'test@gg.com', CAST(0x0000A67700E1E63C AS DateTime))
INSERT [dbo].[ClientRegistration] ([RegistrationID], [FirstName], [Lastname], [Gender], [Username], [Password], [Mobileno], [EmailID], [Createddate]) VALUES (2, N'ram', N'ram', N'M', N'ramsai', N'et3HqIkdUefzPl+lbxhPeQ==', N'9769899999', N'ram@gmail.com', CAST(0x0000A67D009858A7 AS DateTime))
SET IDENTITY_INSERT [dbo].[ClientRegistration] OFF
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc	[dbo].[ValidateUser]
@Username varchar(50)
as
begin
  if exists(SELECT * FROM [ClientRegistration]CR where CR.Username =@Username)
  begin
   select 1
  end
  else 
  begin
   select 0
  end
end
GO
/****** Object:  StoredProcedure [dbo].[ValidateLoginUser]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec ValidateLoginUser 'Saineshwar','123456'  
  
CREATE proc [dbo].[ValidateLoginUser]  
@Username varchar(50),  
@Password varchar(50)  
as  
begin  
  if exists(SELECT Username FROM [ClientRegistration]CR where CR.Username =@Username and CR.Password =@Password)  
  begin  
   SELECT convert(varchar(50),RegistrationID) as RegistrationID, Username,Password  FROM [ClientRegistration]CR
    where CR.Username =@Username and CR.Password =@Password   
  end  
  else   
  begin  
   select 'Failed'  
  end  
end
GO
/****** Object:  StoredProcedure [dbo].[sprocProductTBSelectSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocProductTBSelectSingleItem]
(
	@ProductID  int 
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		ProductID
,ProductNumber
,Name
,Color
,ProductClass
,Price
,Description
,CreatedDate
,CLientIDToken

	FROM [ProductTB]
	WHERE ProductID =@ProductID
		

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocProductTBSelectList]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocProductTBSelectList]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		ProductID
,ProductNumber
,Name
,Color
,ProductClass
,Price
,Description
,CreatedDate
,CLientIDToken

	FROM [ProductTB]

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocProductTBInsertUpdateSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocProductTBInsertUpdateSingleItem]
(
 @ProductID int=NULL
,@ProductNumber varchar(50)=NULL
,@Name varchar(50)=NULL
,@Color varchar(50)=NULL
,@ProductClass varchar(50)=NULL
,@Price decimal=NULL
,@Description varchar(50)=NULL
,@CreatedDate datetime=NULL
,@CLientIDToken varchar(50)=NULL

)
AS
DECLARE @ReturnValue int
IF (@ProductID IS NOT NULL) -- New Item
BEGIN

if exists(select 1 from ProductTB where ProductTB.ProductID = @ProductID)
begin
	SELECT @ReturnValue = @ProductID
end

else

begin

	INSERT
	INTO [ProductTB]
	(
 ProductID
,ProductNumber
,Name
,Color
,ProductClass
,Price
,Description
,CreatedDate
,CLientIDToken

	)
		VALUES
		(
 @ProductID
,@ProductNumber
,@Name
,@Color
,@ProductClass
,@Price
,@Description
,@CreatedDate
,@CLientIDToken

	)
	
	SELECT @ReturnValue = SCOPE_IDENTITY()

end

	END
	ELSE
	BEGIN

	UPDATE [ProductTB]
	SET
		ProductID = @ProductID
,ProductNumber = @ProductNumber
,Name = @Name
,Color = @Color
,ProductClass = @ProductClass
,Price = @Price
,Description = @Description
,CreatedDate = @CreatedDate
,CLientIDToken = @CLientIDToken

	WHERE ProductID =@ProductID
		

SELECT @ReturnValue = @ProductID

END
  IF (@@ERROR != 0)
  BEGIN
    RETURN -1
  END
  ELSE
  BEGIN
    RETURN @ReturnValue
  END
GO
/****** Object:  StoredProcedure [dbo].[sprocProductTBDeleteSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocProductTBDeleteSingleItem]
(
	 @ProductID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ProductTB]
	WHERE ProductID  =@ProductID
		
	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocClientRegistrationSelectSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocClientRegistrationSelectSingleItem]
(
	@RegistrationID bigint
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		RegistrationID
,FirstName
,Lastname
,Gender
,Username
,Password
,Mobileno
,EmailID
,Createddate

	FROM [ClientRegistration]
	WHERE
		([RegistrationID] = @RegistrationID)

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocClientRegistrationSelectList]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocClientRegistrationSelectList]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		RegistrationID
,FirstName
,Lastname
,Gender
,Username
,Password
,Mobileno
,EmailID
,Createddate
	FROM [ClientRegistration]

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocClientRegistrationInsertUpdateSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocClientRegistrationInsertUpdateSingleItem]
(
 @RegistrationID bigint=NULL
,@FirstName varchar(50)=NULL
,@Lastname varchar(50)=NULL
,@Gender char(1)=NULL
,@Username varchar(50)=NULL
,@Password varchar(100)=NULL
,@Mobileno varchar(10)=NULL
,@EmailID varchar(50)=NULL
)
AS
DECLARE @ReturnValue int
IF (@RegistrationID = 0) -- New Item
BEGIN

INSERT INTO [ClientRegistration]
	(
 FirstName
,Lastname
,Gender
,Username
,Password
,Mobileno
,EmailID
,Createddate
	)
		VALUES
		(
 @FirstName
,@Lastname
,@Gender
,@Username
,@Password
,@Mobileno
,@EmailID
,GETDATE()
	)
	
	SELECT @ReturnValue = SCOPE_IDENTITY()

	END
	ELSE
	BEGIN

	UPDATE [ClientRegistration]
	SET
		FirstName = @FirstName
,Lastname = @Lastname
,Gender = @Gender
,Username = @Username
,Password = @Password
,Mobileno = @Mobileno
,EmailID = @EmailID
,Createddate = GETDATE()

	WHERE
		[RegistrationID] = @RegistrationID

SELECT @ReturnValue = @RegistrationID

END
  IF (@@ERROR != 0)
  BEGIN
    RETURN -1
  END
  ELSE
  BEGIN
    RETURN @ReturnValue
  END
GO
/****** Object:  StoredProcedure [dbo].[sprocClientRegistrationDeleteSingleItem]    Script Date: 09/18/2016 16:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocClientRegistrationDeleteSingleItem]
(
	@RegistrationID bigint
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ClientRegistration]
	WHERE
		[RegistrationID] = @RegistrationID
	SET @Err = @@Error

	RETURN @Err
END
GO
