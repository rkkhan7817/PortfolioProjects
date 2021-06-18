--Cleansed DIM-Customers Table --
SELECT
	[CustomerKey] AS CustomerKey
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
      ,[FirstName] AS FirstName
--      ,[MiddleName]
      ,[LastName] AS LastName
-- Combined First & Last Name
,FirstName + ' ' + LastName AS FullName
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
      ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
      ,[DateFirstPurchase] AS DateFirstPurchase
--      ,[CommuteDistance]
, g.City AS CustomerCity -- Joined in Customer City From Geographical Table
  FROM 
	dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography as g on g.GeographyKey = c.GeographyKey
ORDER BY 
	CustomerKey ASC -- Order List by Customer Key