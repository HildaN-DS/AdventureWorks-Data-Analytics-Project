-- Cleaned Fact_SalesQuota
SELECT 
  s.[SalesQuotaKey], 
  s.[EmployeeKey], 
  s.[DateKey], 
  e.[FirstName] AS [First Name], 
  e.[LastName] AS [Last Name], 
  e.FirstName + ' ' + LastName AS [Full Name], 
  CASE e.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  s.[CalendarYear], 
  s.[CalendarQuarter], 
  s.[SalesAmountQuota] 
  --,[Date]
FROM 
  [AdventureWorksDW2019].[dbo].[FactSalesQuota] AS s 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimEmployee] AS e ON s.EmployeeKey = e.EmployeeKey 
WHERE 
  LEFT(DateKey, 4) >= YEAR(
    GETDATE()
  )-2 
ORDER BY 
  DateKey ASC
