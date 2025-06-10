--Top ten companies 
SELECT TOP (10) [Company]
,[Website]
,[Region]
,[Vertical]
,[Funding_Amount_USD]
,[Funding_Stage]
,[Funding_Date]
 FROM [TechFundingDB].[dbo].[TechFunding]

-- Top 10 Companies by Total Funding
SELECT TOP 10
    Company,
    SUM(Funding_Amount_USD) AS Total_Funding
FROM [TechFundingDB].[dbo].[TechFunding]
GROUP BY Company
ORDER BY Total_Funding DESC;

-- Top 5 Regions by Funding
SELECT TOP 5
    Region,
    SUM(Funding_Amount_USD) AS Total_Funding
FROM TechFunding
GROUP BY Region
ORDER BY Total_Funding DESC;

--Top active companies
SELECT TOP 10
    Company,
    COUNT(*) AS Num_Funding_Rounds
FROM TechFunding
GROUP BY Company
ORDER BY Num_Funding_Rounds DESC;

--Most Funding Region (20)
SELECT Top 20
    Region,
    COUNT(*) AS Num_Deals,
    SUM(Funding_Amount_USD) AS Total_Funding
FROM TechFunding
GROUP BY Region
ORDER BY Total_Funding DESC;

--Most funding verdict 
SELECT Top 10
    Vertical,
    COUNT(*) AS Num_Deals,
    SUM(Funding_Amount_USD) AS Total_Funding
FROM TechFunding
GROUP BY Vertical
ORDER BY Total_Funding DESC;

--Yearly funding trend
SELECT 
    YEAR(Funding_Date) AS Year,
    SUM(Funding_Amount_USD) AS Total_Funding
FROM TechFunding
WHERE Funding_Date IS NOT NULL
GROUP BY YEAR(Funding_Date)
ORDER BY Year;
--Funding Stage by number of deal and total funding and find average deal
SELECT 
    Funding_Stage,
    COUNT(*) AS Num_Deals,
    SUM(Funding_Amount_USD) AS Total_Funding,
    AVG(Funding_Amount_USD) AS Avg_Deal_Size
FROM TechFunding
GROUP BY Funding_Stage
ORDER BY Total_Funding DESC;

--Top verticals in each region by total funding
SELECT Region, Vertical, SUM(Funding_Amount_USD) AS Total_Funding
FROM TechFunding
GROUP BY Region, Vertical
ORDER BY Region, Total_Funding DESC;

-- Companies That Raised More Than $1000M
SELECT Company, Region, Funding_Amount_USD, Funding_Stage
FROM TechFunding
WHERE Funding_Amount_USD > 1000000000
ORDER BY Funding_Amount_USD DESC;

--Monthly Funding Trend (Last 2 Years)
SELECT FORMAT(Funding_Date, 'yyyy-MM') AS Month,
       SUM(Funding_Amount_USD) AS TotalFunding
FROM TechFunding
WHERE Funding_Date >= DATEADD(YEAR, -2, GETDATE())
GROUP BY FORMAT(Funding_Date, 'yyyy-MM')
ORDER BY Month;



