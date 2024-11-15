--Cleaned Dim_DateTable
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfMonth]
  --[DayNumberOfYear]
  [WeekNumberOfYear] AS Week, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS Monthshort, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --[CalendarSemester]
  --[FiscalQuarter]
  --[FiscalYear]
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  LEFT(CalendarYear, 4) >= YEAR(
    GETDATE()
  )-2 

