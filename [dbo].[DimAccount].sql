SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAccount]
(
	[AccountKey] [int] NOT NULL,
	[ParentAccountKey] [int] NULL,
	[AccountCodeAlternateKey] [int] NULL,
	[ParentAccountCodeAlternateKey] [int] NULL,
	[AccountDescription] [nvarchar](50) NULL,
	[AccountType] [nvarchar](50) NULL,
	[Operator] [nvarchar](50) NULL,
	[CustomMembers] [nvarchar](300) NULL,
	[ValueType] [nvarchar](50) NULL,
	[CustomMemberOptions] [nvarchar](200) NULL
)
WITH
(
	DISTRIBUTION = HASH ( [AccountKey] ),
	CLUSTERED COLUMNSTORE INDEX
)
GO
CREATE CLUSTERED COLUMNSTORE INDEX [ClusteredIndex_458c5d0d3540412a8b4aa74e4a28c538] ON [dbo].[DimAccount] WITH (DROP_EXISTING = OFF)
GO
