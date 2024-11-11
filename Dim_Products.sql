-- Cleaned Dim_Products Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemKey, 
  --[ProductSubcategoryKey]
  --[WeightUnitMeasureCode]
  --[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  pc.[EnglishProductCategoryName] AS [Product Category], -- Joined from Category Table
  ps.[EnglishProductSubcategoryName] AS [Sub Category],  -- Joined from Sub Category Table
  --[SpanishProductName]
  --[FrenchProductName]
  --[StandardCost]
  --[FinishedGoodsFlag]
  p.[Color], 
  --[SafetyStockLevel]
  --[ReorderPoint]
  --[ListPrice]
  p.[Size], 
  --[SizeRange]
  --[Weight]
  --[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --[DealerPrice]
  --[Class]
  --[Style]
  p.[ModelName] AS [Model Name], 
  --[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  --[FrenchDescription]
  --[ChineseDescription]
  --[ArabicDescription]
  --[HebrewDescription]
  --[ThaiDescription]
  --[GermanDescription]
  --[JapaneseDescription]
  --[TurkishDescription]
  --[StartDate]
  --[EndDate]
  ISNULL (p.[Status], 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
