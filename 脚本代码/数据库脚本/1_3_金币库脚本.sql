USE [master]
GO
/****** 对象:  Database [QPTreasureDB]    脚本日期: 12/08/2008 11:31:04 ******/
CREATE DATABASE [QPTreasureDB] ON  PRIMARY 
( NAME = N'QPTreasureDB', FILENAME = N'D:\数据库\QPTreasureDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QPTreasureDB_log', FILENAME = N'D:\数据库\QPTreasureDB_log.LDF' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QPTreasureDB].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [QPTreasureDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QPTreasureDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QPTreasureDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QPTreasureDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QPTreasureDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QPTreasureDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QPTreasureDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QPTreasureDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QPTreasureDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QPTreasureDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QPTreasureDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QPTreasureDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QPTreasureDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QPTreasureDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QPTreasureDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QPTreasureDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QPTreasureDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QPTreasureDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QPTreasureDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QPTreasureDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QPTreasureDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QPTreasureDB] SET  READ_WRITE 
GO
ALTER DATABASE [QPTreasureDB] SET RECOVERY FULL 
GO
ALTER DATABASE [QPTreasureDB] SET  MULTI_USER 
GO
ALTER DATABASE [QPTreasureDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QPTreasureDB] SET DB_CHAINING OFF 


if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'QPTreasureDB', @optname = 'db chaining', @optvalue = 'OFF'
 end