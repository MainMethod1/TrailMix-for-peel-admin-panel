
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2014 21:03:17
-- Generated from EDMX file: C:\Users\Parth\Documents\Visual Studio 2013\Projects\Lab7\Lab7\Models\TrailMix.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Lab7DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CityEvent_City]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CityEvent] DROP CONSTRAINT [FK_CityEvent_City];
GO
IF OBJECT_ID(N'[dbo].[FK_CityEvent_Event]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CityEvent] DROP CONSTRAINT [FK_CityEvent_Event];
GO
IF OBJECT_ID(N'[dbo].[FK_TrailAccessPointCity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrailAccessPoints] DROP CONSTRAINT [FK_TrailAccessPointCity];
GO
IF OBJECT_ID(N'[dbo].[FK_TrailTrailAccessPoint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrailAccessPoints] DROP CONSTRAINT [FK_TrailTrailAccessPoint];
GO
IF OBJECT_ID(N'[dbo].[FK_TrailUseTrail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrailUsage] DROP CONSTRAINT [FK_TrailUseTrail];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cities];
GO
IF OBJECT_ID(N'[dbo].[CityEvent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CityEvent];
GO
IF OBJECT_ID(N'[dbo].[Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Events];
GO
IF OBJECT_ID(N'[dbo].[TrailAccessPoints]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrailAccessPoints];
GO
IF OBJECT_ID(N'[dbo].[Trails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trails];
GO
IF OBJECT_ID(N'[dbo].[TrailUsage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrailUsage];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CityName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [eventName] nvarchar(max)  NOT NULL,
    [eventLocation] nvarchar(max)  NULL,
    [eventInfo] nvarchar(max)  NULL,
    [eventDateTime] datetime  NULL
);
GO

-- Creating table 'TrailAccessPoints'
CREATE TABLE [dbo].[TrailAccessPoints] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [longitude] float  NOT NULL,
    [lattitude] float  NOT NULL,
    [locationName] nvarchar(max)  NULL,
    [TrailId] int  NOT NULL,
    [City_Id] int  NOT NULL
);
GO

-- Creating table 'Trails'
CREATE TABLE [dbo].[Trails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TrailName] nvarchar(max)  NULL,
    [TrailType] nvarchar(max)  NULL,
    [TrailDifficulty] nvarchar(max)  NULL,
    [TrailSurfaceType] nvarchar(max)  NULL,
    [TrailLength] nvarchar(max)  NULL,
    [parkings] bit  NULL,
    [maintanance] bit  NULL,
    [seasonHours] nvarchar(max)  NULL,
    [washroooms] bit  NULL,
    [hasStairs] bit  NULL,
    [allowPets] bit  NULL,
    [notes] nvarchar(max)  NULL
);
GO

-- Creating table 'TrailUsages'
CREATE TABLE [dbo].[TrailUsages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [trailAccessDate] datetime  NOT NULL,
    [Trail_Id] int  NOT NULL
);
GO

-- Creating table 'CityEvent'
CREATE TABLE [dbo].[CityEvent] (
    [Cities_Id] int  NOT NULL,
    [Events_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrailAccessPoints'
ALTER TABLE [dbo].[TrailAccessPoints]
ADD CONSTRAINT [PK_TrailAccessPoints]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Trails'
ALTER TABLE [dbo].[Trails]
ADD CONSTRAINT [PK_Trails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrailUsages'
ALTER TABLE [dbo].[TrailUsages]
ADD CONSTRAINT [PK_TrailUsages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Cities_Id], [Events_Id] in table 'CityEvent'
ALTER TABLE [dbo].[CityEvent]
ADD CONSTRAINT [PK_CityEvent]
    PRIMARY KEY CLUSTERED ([Cities_Id], [Events_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [City_Id] in table 'TrailAccessPoints'
ALTER TABLE [dbo].[TrailAccessPoints]
ADD CONSTRAINT [FK_TrailAccessPointCity]
    FOREIGN KEY ([City_Id])
    REFERENCES [dbo].[Cities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TrailAccessPointCity'
CREATE INDEX [IX_FK_TrailAccessPointCity]
ON [dbo].[TrailAccessPoints]
    ([City_Id]);
GO

-- Creating foreign key on [TrailId] in table 'TrailAccessPoints'
ALTER TABLE [dbo].[TrailAccessPoints]
ADD CONSTRAINT [FK_TrailTrailAccessPoint]
    FOREIGN KEY ([TrailId])
    REFERENCES [dbo].[Trails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TrailTrailAccessPoint'
CREATE INDEX [IX_FK_TrailTrailAccessPoint]
ON [dbo].[TrailAccessPoints]
    ([TrailId]);
GO

-- Creating foreign key on [Trail_Id] in table 'TrailUsages'
ALTER TABLE [dbo].[TrailUsages]
ADD CONSTRAINT [FK_TrailUseTrail]
    FOREIGN KEY ([Trail_Id])
    REFERENCES [dbo].[Trails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TrailUseTrail'
CREATE INDEX [IX_FK_TrailUseTrail]
ON [dbo].[TrailUsages]
    ([Trail_Id]);
GO

-- Creating foreign key on [Cities_Id] in table 'CityEvent'
ALTER TABLE [dbo].[CityEvent]
ADD CONSTRAINT [FK_CityEvent_Cities]
    FOREIGN KEY ([Cities_Id])
    REFERENCES [dbo].[Cities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Events_Id] in table 'CityEvent'
ALTER TABLE [dbo].[CityEvent]
ADD CONSTRAINT [FK_CityEvent_Events]
    FOREIGN KEY ([Events_Id])
    REFERENCES [dbo].[Events]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CityEvent_Events'
CREATE INDEX [IX_FK_CityEvent_Events]
ON [dbo].[CityEvent]
    ([Events_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------