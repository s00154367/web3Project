CREATE TABLE [dbo].[Locations] (
    [LocationId] INT             NOT NULL,
    [Name]       NCHAR (20)      NULL,
    [County]     NCHAR (10)      NULL,
    [favourite]     BIT             NULL,
    [lat]        DECIMAL (18, 4) NULL,
    [long]       DECIMAL (18, 4) NULL,
    PRIMARY KEY CLUSTERED ([LocationId] ASC)
);

