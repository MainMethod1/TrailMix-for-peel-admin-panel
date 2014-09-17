SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContextKey] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ClaimType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClaimValue] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProviderKey] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserId] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RoleId] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SecurityStamp] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhoneNumber] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityEvent](
	[Cities_Id] [int] NOT NULL,
	[Events_Id] [int] NOT NULL,
 CONSTRAINT [PK_CityEvent] PRIMARY KEY CLUSTERED 
(
	[Cities_Id] ASC,
	[Events_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[eventName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[eventLocation] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eventInfo] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eventDateTime] [datetime] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrailAccessPoints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[longitude] [float] NOT NULL,
	[lattitude] [float] NOT NULL,
	[locationName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TrailId] [int] NOT NULL,
	[City_Id] [int] NOT NULL,
 CONSTRAINT [PK_TrailAccessPoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrailName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TrailType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TrailDifficulty] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TrailSurfaceType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TrailLength] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[parkings] [bit] NULL,
	[maintanance] [bit] NULL,
	[seasonHours] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[washroooms] [bit] NULL,
	[hasStairs] [bit] NULL,
	[allowPets] [bit] NULL,
	[notes] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Trails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrailUsages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[trailAccessDate] [datetime] NOT NULL,
	[Trail_Id] [int] NOT NULL,
	[activity] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TrailUsages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201404130124370_tempMigration', N'Lab7.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE761BD85BA44ED206CD0DEBECA26F0B5AA21D61254A95A83441D12FEB433FA9BFD0A144DD78D1C5566C6751A0588BC333C3E1901C8E8EF2DF3FFF8E7F7AF43DE30147B11B90897930DA370D4CECC071C972622674F1EAADF9D3BBAFBF1A9F39FEA3F131973B6272D093C413F39ED2F0D8B262FB1EFB281EF9AE1D0571B0A0233BF02DE404D6E1FEFE8FD6C1818501C2042CC318BF4F08757D9CFE809FD380D838A409F2AE02077B317F0E2DB314D5B8463E8E4364E3897989E63F8C3231D338F15C0426CCB0B7300D4448401105038F3FC47846A3802C67213C40DEDD5388416E81BC1873C38F4BF1AE63D83F6463B0CA8E39949DC434F07B021E1C71A75862F7955C6B164E03B79D817BE9131B75EABA8979E1E0F4D1FBC00307880A8FA75EC48427E655A1E2240EAF311DE51D4719E47904707F06D1E7511571CFE8DC6FAF08A2C3D13EFB6FCF98261E4D223C2138A111F2F68CDB64EEB9F66FF8E92EF88CC9E4E860BE387AFBFA0D728EDE7C8F8F5E57470A6305B9DA0378741B05218EC036BC28C66F1A56BD9F25762CBA55FA645E815882F5601A57E8F1129325BD879572F8D634CEDD47ECE44F78707D202E2C1FE844A3047E5E279E87E61E2EDAAD469DECFF0D5A0F5FBF1944EB357A7097E9D40BFA61E144B0AEDE632F6D8DEFDD305B5EB5F9FEC4C5CEA3C067BFEBF195B57E9A054964B3C1045A913B142D31AD5B37B6CAE0ED14D20C6AF8B0CE51773FB499A572782B45D980565909B98A4DAF86DCDEE7D5DB39E24EC210262F0D2DE691A680AB9C5223A1DB9EC11ACB6039E81A2C0406F125EF7D673E72BD0136BF0E5A20E158B8918F8B51FE1C40A821D2DBE65B14C7B0F69D5F517CDF603AFC7300D367D84E2208C919457EF8ECDA6EEF0382AF137FCE227D73BA069B9ABB3F837364D3203A23ACD7DA789781FD3948E819714E11C51FA89D03B29F77AEDF1D6010734E6C1BC7F139043376A601E4D339E005A14787BDE1D8CEB4EDE463EA21D757671FC21EFA29172D3310B584948568C454994893A997C1D225DD4CCD45F5A66612ADA672B1BEA632B06E967249BDA1A940AB9D99D460B95D3A43C3277729ECEE6777EB1DDEBABDA0E2C619EC90F8174C7004DB98738B28C5112967A0CBBEB18D64219D3EA6F4D9CFA654D347E42543AB5A6935A49BC0F0AB2185DDFDD5909A098F1F5C8765251DAE3CB930C0779257DFA6DAD79C60D9A697436D989B56BE993D40B75C4EE238B0DD7415288A5DBC5451B71F7238A3BD6E918D46AC7DC0C020D05D76E4C113189B2906D50D39C51EA6D838B1B362E014C536726437C2809C1E86E527AAC2B0B2065237EE3B4927443A8E5827C42E4131AC5497507959B8C47643E4B57A49E8D9F10863632F74882DA738C484296CF54417E5EA920733A0D0234C4A9B87C65625E29A035193B5EAE6BC2D852DE75DAA446C24265B72674D5CF2FCED5902B3D9631B08CE66977431405BBEDB4680F2BB4AD700102F2EBB16A0C28D4913A03CA5DA4880D63DB68500ADBBE4C505687645ED3AFFC27D75D7C2B37E51DEFCB1DEE8AE2DC466CD1F3B169A59EE097D28F4C0911C9EA773D6881FA9E2720676F2FB59CC535D314418F80CD37AC9A6CC779579A8D50C220651136019682DA0FCC59F04242DA81EC6E5B5BC46EB7816D10336AFBB35C2F2BD5F80ADC4808C5D7D015A11D4BF261583B3D3EDA31859110D529077BA2C54701401216E5EF58177708AAE2E2B3BA64B2EDC271BAE0C8C4F4683835A32578D93F2C10CEEA53C34DBBDA44AC8FAA4646B7949489F345ECA0733B897788CB63B499114F4480BD67251FD081F68B1E5958EE2B429DAC6564688E20FC696863935BE4261E892658549C59F18B38C46357D35EB4F33F2330CCB8E156CA3C2DA42130D22B4C4422BA8064BCFDD28A6A788A23962759EA9E34B62CAB355B3FDE72AABC7A73C89F939904BB37FF3EA5DE5757DED9095B310DEF91C86E6B35426AD9F2B265EDDDD609436E4A14851B29F065EE2137D66A5EF9DBDB8ABF6CF9EC808634BB05FCA9C243749F96DDDE79D66445E0DEBCE4E91B1AC3E437A089D9FF37CB3EA695D0EAA47C94B5255145D996A6B33A64B5DBACD92980EF69FA45684E759499C835205E08F7A6254680C1258A5AD3B6A9D6952C5ACB7744714E8245548A1A9879555D248CDC86AC34A781A8FAA25BA6B9069225574B9B53BB2823052855634AF80ADB0596CEB8EAAE094548115CDDDB14B8289B87BEEF059A5BDA4F43FACB20BEC7AA79506E379B6C2610EBBCA7BFA2A50E5714F2CFE265E02E3CF77328CB4B7B8FE6194152CD60B230D867EAFA9BDDAAE6F358DEFE3F598B5F7D5B5EDBCE97DBD1EAF5FB03E6B4848B73751A4D05EDCE284DBDA98DF9CDA3F8691AE52998869E46E84A3FC29A6D81F3181D1EC0F6FEAB9986DDCB9C01522EE02C734E3689887FB0787C26735BBF3898B15C78EA7B879EABE73A9CFD906E856E40145F63D8A64F2C31A9F8194A0525DF98238F87162FE95F63A4E4B14EC5FE9E33DE322FE40DC3F1268B88B126CFC2D933987A1C537DFA776F42386EE5EBDF8FD53D675CFB88960C51C1BFB822F5799E1FAA70DBDACC9BAAE61CDCA1F3CBCDC0555FBB640892A2C88D53F2598BB7490CF08722BBFF1D1E3B77D4D537E2AB016A2E27380A1F00671A18EEEBF0A9696EAEFC04F9A52FDFB0D564DFD5FC5342DEDDF25FDC144D27FF76D28EFB9C5A3467119DAC49694FAB99534BD168372DB6793C4AD5E6BA1CBFCE91E706B70A457888C17462F1EEC7454B08707C3DE66683F3B65785758C2257F63BBE4E04DF2811BDE007D5134E01D20AE298838DB27FB6E3AD67405DC1D674CF6A3F4EE58B0717AD6F689BB9B0E365D9977C783AD173D77C7626D5BE7E79623ADF311BA75B2ADCC1BD2BC8851D582DBC8B459E11C6EF8F3008220CB28B36F20D5ECAD26E6698BC25244AF544F1B13154B0B47D22B4934ABED37567EE0370E96CB34ABD5902D9B74F3FDBF51379769D6ADA1306E8306AC2411AAA8D92DFB5813DFE925D17E6B23696199B7E5AC8D6FD55F12CB7710A7D4568FE61DF1CB21F50EE29221974E0F12AFFCBA17CECECA5F4884F33B76972504FB7B8904DBB553B390B9208B203FBC058B7211A14273852972E0483D89A8BB4036856656634E3FE24EEB76EC4DC71C3B17E426A1614261C8D89F7BB582174B029AF4A74CE5BACDE39B30FD7B24430C01CC74596DFE86FC9CB89E53D87DAEA80969205876C12BBA6C2E29ABEC2E9F0AA4EB807404E2EE2B92A23BEC871E80C53764861EF02AB641F85DE225B29FCA0AA00EA47D22EA6E1F9FBA6819213FE618657FF80931ECF88FEFFE079533BDB228540000, N'6.1.0-30225')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201404130133422_tempMigration1', N'Lab7.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE761BD85BA44ED206CD0DEBECA26F0B5AA21D61254A95A83441D12FEB433FA9BFD0A144DD78D1C5566C6751A0588BC333C3E1901C8E8EF2DF3FFF8E7F7AF43DE30147B11B90897930DA370D4CECC071C972622674F1EAADF9D3BBAFBF1A9F39FEA3F131973B6272D093C413F39ED2F0D8B262FB1EFB281EF9AE1D0571B0A0233BF02DE404D6E1FEFE8FD6C1818501C2042CC318BF4F08757D9CFE809FD380D838A409F2AE02077B317F0E2DB314D5B8463E8E4364E3897989E63F8C3231D338F15C0426CCB0B7300D4448401105038F3FC47846A3802C67213C40DEDD5388416E81BC1873C38F4BF1AE63D83F6463B0CA8E39949DC434F07B021E1C71A75862F7955C6B164E03B79D817BE9131B75EABA8979E1E0F4D1FBC00307880A8FA75EC48427E655A1E2240EAF311DE51D4719E47904707F06D1E7511571CFE8DC6FAF08A2C3D13EFB6FCF98261E4D223C2138A111F2F68CDB64EEB9F66FF8E92EF88CC9E4E860BE387AFBFA0D728EDE7C8F8F5E57470A6305B9DA0378741B05218EC036BC28C66F1A56BD9F25762CBA55FA645E815882F5601A57E8F1129325BD879572F8D634CEDD47ECE44F78707D202E2C1FE844A3047E5E279E87E61E2EDAAD469DECFF0D5A0F5FBF1944EB357A7097E9D40BFA61E144B0AEDE632F6D8DEFDD305B5EB5F9FEC4C5CEA3C067BFEBF195B57E9A054964B3C1045A913B142D31AD5B37B6CAE0ED14D20C6AF8B0CE51773FB499A572782B45D980565909B98A4DAF86DCDEE7D5DB39E24EC210262F0D2DE691A680AB9C5223A1DB9EC11ACB6039E81A2C0406F125EF7D673E72BD0136BF0E5A20E158B8918F8B51FE1C40A821D2DBE65B14C7B0F69D5F517CDF603AFC7300D367D84E2208C919457EF8ECDA6EEF0382AF137FCE227D73BA069B9ABB3F837364D3203A23ACD7DA789781FD3948E819714E11C51FA89D03B29F77AEDF1D6010734E6C1BC7F139043376A601E4D339E005A14787BDE1D8CEB4EDE463EA21D757671FC21EFA29172D3310B584948568C454994893A997C1D225DD4CCD45F5A66612ADA672B1BEA632B06E967249BDA1A940AB9D99D460B95D3A43C3277729ECEE6777EB1DDEBABDA0E2C619EC90F8174C7004DB98738B28C5112967A0CBBEB18D64219D3EA6F4D9CFA654D347E42543AB5A6935A49BC0F0AB2185DDFDD5909A098F1F5C8765251DAE3CB930C0779257DFA6DAD79C60D9A697436D989B56BE993D40B75C4EE238B0DD7415288A5DBC5451B71F7238A3BD6E918D46AC7DC0C020D05D76E4C113189B2906D50D39C51EA6D838B1B362E014C536726437C2809C1E86E527AAC2B0B2065237EE3B4927443A8E5827C42E4131AC5497507959B8C47643E4B57A49E8D9F10863632F74882DA738C484296CF54417E5EA920733A0D0234C4A9B87C65625E29A035193B5EAE6BC2D852DE75DAA446C24265B72674D5CF2FCED5902B3D9631B08CE66977431405BBEDB4680F2BB4AD700102F2EBB16A0C28D4913A03CA5DA4880D63DB68500ADBBE4C505687645ED3AFFC27D75D7C2B37E51DEFCB1DEE8AE2DC466CD1F3B169A59EE097D28F4C0911C9EA773D6881FA9E2720676F2FB59CC535D314418F80CD37AC9A6CC779579A8D50C220651136019682DA0FCC59F04242DA81EC6E5B5BC46EB7816D10336AFBB35C2F2BD5F80ADC4808C5D7D015A11D4BF261583B3D3EDA31859110D529077BA2C54701401216E5EF58177708AAE2E2B3BA64B2EDC271BAE0C8C4F4683835A32578D93F2C10CEEA53C34DBBDA44AC8FAA4646B7949489F345ECA0733B897788CB63B499114F4480BD67251FD081F68B1E5958EE2B429DAC6564688E20FC696863935BE4261E892658549C59F18B38C46357D35EB4F33F2330CCB8E156CA3C2DA42130D22B4C4422BA8064BCFDD28A6A788A23962759EA9E34B62CAB355B3FDE72AABC7A73C89F939904BB37FF3EA5DE5757DED9095B310DEF91C86E6B35426AD9F2B265EDDDD609436E4A14851B29F065EE2137D66A5EF9DBDB8ABF6CF9EC808634BB05FCA9C243749F96DDDE79D66445E0DEBCE4E91B1AC3E437A089D9FF37CB3EA695D0EAA47C94B5255145D996A6B33A64B5DBACD92980EF69FA45684E759499C835205E08F7A6254680C1258A5AD3B6A9D6952C5ACB7744714E8245548A1A9879555D248CDC86AC34A781A8FAA25BA6B9069225574B9B53BB2823052855634AF80ADB0596CEB8EAAE094548115CDDDB14B8289B87BEEF059A5BDA4F43FACB20BEC7AA79506E379B6C2610EBBCA7BFA2A50E5714F2CFE265E02E3CF77328CB4B7B8FE6194152CD60B230D867EAFA9BDDAAE6F358DEFE3F598B5F7D5B5EDBCE97DBD1EAF5FB03E6B4848B73751A4D05EDCE284DBDA98DF9CDA3F8691AE52998869E46E84A3FC29A6D81F3181D1EC0F6FEAB9986DDCB9C01522EE02C734E3689887FB0787C26735BBF3898B15C78EA7B879EABE73A9CFD906E856E40145F63D8A64F2C31A9F8194A0525DF98238F87162FE95F63A4E4B14EC5FE9E33DE322FE40DC3F1268B88B126CFC2D933987A1C537DFA776F42386EE5EBDF8FD53D675CFB88960C51C1BFB822F5799E1FAA70DBDACC9BAAE61CDCA1F3CBCDC0555FBB640892A2C88D53F2598BB7490CF08722BBFF1D1E3B77D4D537E2AB016A2E27380A1F00671A18EEEBF0A9696EAEFC04F9A52FDFB0D564DFD5FC5342DEDDF25FDC144D27FF76D28EFB9C5A3467119DAC49694FAB99534BD168372DB6793C4AD5E6BA1CBFCE91E706B70A457888C17462F1EEC7454B08707C3DE66683F3B65785758C2257F63BBE4E04DF2811BDE007D5134E01D20AE298838DB27FB6E3AD67405DC1D674CF6A3F4EE58B0717AD6F689BB9B0E365D9977C783AD173D77C7626D5BE7E79623ADF311BA75B2ADCC1BD2BC8851D582DBC8B459E11C6EF8F3008220CB28B36F20D5ECAD26E6698BC25244AF544F1B13154B0B47D22B4934ABED37567EE0370E96CB34ABD5902D9B74F3FDBF51379769D6ADA1306E8306AC2411AAA8D92DFB5813DFE925D17E6B23696199B7E5AC8D6FD55F12CB7710A7D4568FE61DF1CB21F50EE29221974E0F12AFFCBA17CECECA5F4884F33B76972504FB7B8904DBB553B390B9208B203FBC058B7211A14273852972E0483D89A8BB4036856656634E3FE24EEB76EC4DC71C3B17E426A1614261C8D89F7BB582174B029AF4A74CE5BACDE39B30FD7B24430C01CC74596DFE86FC9CB89E53D87DAEA80969205876C12BBA6C2E29ABEC2E9F0AA4EB807404E2EE2B92A23BEC871E80C53764861EF02AB641F85DE225B29FCA0AA00EA47D22EA6E1F9FBA6819213FE618657FF80931ECF88FEFFE079533BDB228540000, N'6.1.0-30225')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'fcfd4c5f-efe1-40f6-b80c-df3e869372f3', NULL, 0, N'AIN6Nrs3cavydXTDKBqSpuGLkEin1XrymBTOsj7UBt7qCTjbwa6RZo0T5vvfVnqE3Q==', N'9cf87f00-032f-4794-a81f-4ac61a96cf4b', NULL, 0, 0, NULL, 0, 0, N'admin')
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

GO
INSERT [dbo].[Cities] ([Id], [CityName]) VALUES (1, N'Brampton')
GO
INSERT [dbo].[Cities] ([Id], [CityName]) VALUES (2, N'Mississauga')
GO
INSERT [dbo].[Cities] ([Id], [CityName]) VALUES (3, N'Caledon')
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

GO
INSERT [dbo].[Events] ([Id], [eventName], [eventLocation], [eventInfo], [eventDateTime]) VALUES (1, N'Tour De Mississauga', N'Mississauga12', N'Tour De Mississauga is organized annually by the city of Mississauga.', CAST(0x0000A35000000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[TrailAccessPoints] ON 

GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (2, 43.66751, -79.7497, N'Bovaird-Steeles', 5, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (3, 43.6637, -79.7364, NULL, 3, 2)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (4, 43.6576, -79.7456, NULL, 6, 3)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (5, 43.5423, -79.4343, NULL, 8, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (6, 43.6645, -79.4323, NULL, 10, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (7, 43.5672, -79.3454, NULL, 12, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (8, 43.658, -79.3457, NULL, 13, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (9, 43.6637, -79.2434, NULL, 14, 2)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (10, 43.6782, -79.2445, NULL, 1, 2)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (11, 43.6782, -79.2342, NULL, 2, 2)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (12, 43.6528, -79.2421, NULL, 4, 3)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (14, 43.65371, -79.2431, NULL, 7, 3)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (15, 43.7372, -79.2187, NULL, 9, 1)
GO
INSERT [dbo].[TrailAccessPoints] ([Id], [longitude], [lattitude], [locationName], [TrailId], [City_Id]) VALUES (16, 43.78172, -79.7817, NULL, 11, 2)
GO
SET IDENTITY_INSERT [dbo].[TrailAccessPoints] OFF
GO
SET IDENTITY_INSERT [dbo].[Trails] ON 

GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (1, N'Bruce Trail', N'Hiking/Walking', N'Normal', N'Grass', N'55', 1, 1, N'Year Round', 0, 0, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (2, N'Bovaird Drive Trail', N'Multi Use', N'High', N'Gravel', N'35', 0, 1, N'Year Round', 1, 0, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (3, N'Calidon Trailway', N'Biking', N'Easy', N'Paved', N'12', 1, 1, N'Year Round', 1, 0, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (4, N'Chinguacousy', N'Multi Use', N'Easy', N'Paved Asphalt', N'9', 1, 1, N'Year Round', 0, 0, 1, N'Police Petrolled')
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (5, N'Esker Lake Trail', N'Multi Use', N'Normal', N'Paved asphalt', N'8', 1, 1, N'Year Round', 0, 0, 1, N'Police Petrolled')
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (6, N'Fletchers Creek Trail', N'Multi Use', N'High', N'Paved Asphalt', N'7.9', 0, 1, N'Year Round', 0, 1, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (7, N'Etobicoke Creek Trail', N'Multi Use', N'Normal', N'Limestone/Asphalt', N'14.5', 0, 1, N'Year Round', 1, 1, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (8, N'Applewood Trail', N'Multi-use', N'Normal', N'Paved/dirt only', N'3.8', 0, 1, N'Year Round', 0, 1, 0, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (9, N'Burnhamthorpe Trail', N'Multi Use', N'Normal', N'Paved', N'11', 1, 1, N'Year Round', 1, 1, 0, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (10, N'Charlie Martin Trail', N'Multi use', N'High', N'Paved/Road route', N'1.9', 0, 1, N'Year Round', 1, 0, 0, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (11, N'Culham Trail', N'Multi use', N'Normal', N'Asphalt', N'12', 0, 1, N'Year Round', 1, 0, 0, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (12, N'Lake Auitaine Trail', N'Multi use', N'Normal', N'Paved', N'3.4', 1, 1, N'Year Round', 1, 1, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (13, N'Elora - Cataract Trail', N'Hiking/Walking', N'High', N'Compacted soil, Boardwalk', N'6', 1, 0, N'Year Round', 1, 0, 1, NULL)
GO
INSERT [dbo].[Trails] ([Id], [TrailName], [TrailType], [TrailDifficulty], [TrailSurfaceType], [TrailLength], [parkings], [maintanance], [seasonHours], [washroooms], [hasStairs], [allowPets], [notes]) VALUES (14, N'Grand Valley Trail', N'Hiking/Walking', N'High', N'Road,paved,gravel or loose soil', N'4', 0, 1, N'Year Round', 1, 0, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Trails] OFF
GO
SET IDENTITY_INSERT [dbo].[TrailUsages] ON 

GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (1, CAST(0x0000A2BC00000000 AS DateTime), 1, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (2, CAST(0x0000A2F500000000 AS DateTime), 2, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (3, CAST(0x0000A2DB00000000 AS DateTime), 3, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (4, CAST(0x0000A2BC00000000 AS DateTime), 4, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (5, CAST(0x0000A22F00000000 AS DateTime), 5, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (6, CAST(0x0000A38500000000 AS DateTime), 5, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (7, CAST(0x0000A18100000000 AS DateTime), 6, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (8, CAST(0x0000A24200000000 AS DateTime), 3, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (9, CAST(0x0000A2E200000000 AS DateTime), 3, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (10, CAST(0x0000A2EE00000000 AS DateTime), 6, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (11, CAST(0x0000A2C700000000 AS DateTime), 13, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (14, CAST(0x0000A2AE00000000 AS DateTime), 14, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (15, CAST(0x0000A2C700000000 AS DateTime), 2, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (16, CAST(0x0000A2B900000000 AS DateTime), 3, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (17, CAST(0x0000A2B800000000 AS DateTime), 5, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (18, CAST(0x0000A2EC00000000 AS DateTime), 7, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (19, CAST(0x0000A2D100000000 AS DateTime), 8, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (20, CAST(0x0000A2F700000000 AS DateTime), 8, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (21, CAST(0x0000A2DB00000000 AS DateTime), 9, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (23, CAST(0x0000A2C600000000 AS DateTime), 9, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (24, CAST(0x0000A2CE00000000 AS DateTime), 1, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (25, CAST(0x0000A2C500000000 AS DateTime), 10, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (26, CAST(0x0000A2B100000000 AS DateTime), 11, N'hiking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (27, CAST(0x0000A2B900000000 AS DateTime), 12, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (28, CAST(0x0000A2B900000000 AS DateTime), 13, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (29, CAST(0x0000A2BA00000000 AS DateTime), 14, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (30, CAST(0x0000A2E000000000 AS DateTime), 10, N'walking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (31, CAST(0x0000A30000000000 AS DateTime), 13, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (32, CAST(0x0000A30100000000 AS DateTime), 12, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (33, CAST(0x0000A30100000000 AS DateTime), 14, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (34, CAST(0x0000A2C800000000 AS DateTime), 3, N'biking')
GO
INSERT [dbo].[TrailUsages] ([Id], [trailAccessDate], [Trail_Id], [activity]) VALUES (35, CAST(0x0000A2C600000000 AS DateTime), 12, N'biking')
GO
SET IDENTITY_INSERT [dbo].[TrailUsages] OFF
GO
SET ANSI_PADDING ON

GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_FK_CityEvent_Events] ON [dbo].[CityEvent]
(
	[Events_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_FK_TrailAccessPointCity] ON [dbo].[TrailAccessPoints]
(
	[City_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_FK_TrailTrailAccessPoint] ON [dbo].[TrailAccessPoints]
(
	[TrailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_FK_TrailUseTrail] ON [dbo].[TrailUsages]
(
	[Trail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CityEvent]  WITH CHECK ADD  CONSTRAINT [FK_CityEvent_Cities] FOREIGN KEY([Cities_Id])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[CityEvent] CHECK CONSTRAINT [FK_CityEvent_Cities]
GO
ALTER TABLE [dbo].[CityEvent]  WITH CHECK ADD  CONSTRAINT [FK_CityEvent_Events] FOREIGN KEY([Events_Id])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[CityEvent] CHECK CONSTRAINT [FK_CityEvent_Events]
GO
ALTER TABLE [dbo].[TrailAccessPoints]  WITH CHECK ADD  CONSTRAINT [FK_TrailAccessPointCity] FOREIGN KEY([City_Id])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[TrailAccessPoints] CHECK CONSTRAINT [FK_TrailAccessPointCity]
GO
ALTER TABLE [dbo].[TrailAccessPoints]  WITH CHECK ADD  CONSTRAINT [FK_TrailTrailAccessPoint] FOREIGN KEY([TrailId])
REFERENCES [dbo].[Trails] ([Id])
GO
ALTER TABLE [dbo].[TrailAccessPoints] CHECK CONSTRAINT [FK_TrailTrailAccessPoint]
GO
ALTER TABLE [dbo].[TrailUsages]  WITH CHECK ADD  CONSTRAINT [FK_TrailUseTrail] FOREIGN KEY([Trail_Id])
REFERENCES [dbo].[Trails] ([Id])
GO
ALTER TABLE [dbo].[TrailUsages] CHECK CONSTRAINT [FK_TrailUseTrail]
GO
