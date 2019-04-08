
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/17/2018 14:49:49
-- Generated from EDMX file: C:\Users\thedr\source\repos\EncryptdeDialogue\EncryptedDialogue\EncryptedDialogue.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EncruptedDialog];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserDialogue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DialogueSet] DROP CONSTRAINT [FK_UserDialogue];
GO
IF OBJECT_ID(N'[dbo].[FK_UserDialogue1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DialogueSet] DROP CONSTRAINT [FK_UserDialogue1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[DialogueSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DialogueSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DialogueSet'
CREATE TABLE [dbo].[DialogueSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [DateTime] datetime  NOT NULL,
    [RecipientId] int  NOT NULL,
    [SenderId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DialogueSet'
ALTER TABLE [dbo].[DialogueSet]
ADD CONSTRAINT [PK_DialogueSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RecipientId] in table 'DialogueSet'
ALTER TABLE [dbo].[DialogueSet]
ADD CONSTRAINT [FK_UserDialogue]
    FOREIGN KEY ([RecipientId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDialogue'
CREATE INDEX [IX_FK_UserDialogue]
ON [dbo].[DialogueSet]
    ([RecipientId]);
GO

-- Creating foreign key on [SenderId] in table 'DialogueSet'
ALTER TABLE [dbo].[DialogueSet]
ADD CONSTRAINT [FK_UserDialogue1]
    FOREIGN KEY ([SenderId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDialogue1'
CREATE INDEX [IX_FK_UserDialogue1]
ON [dbo].[DialogueSet]
    ([SenderId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------