SELECT * FROM blinkit_data

SELECT COUNT (*) FROM blinkit_data

UPDATE blinkit_data
SET Item_Fat_Content =
CASE 
WHEN Item_Fat_Content IN ('LF' , 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END;

SELECT DISTINCT (Item_Fat_Content) FROM blinkit_data;

SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS 
Total_Sales_Million 
FROM blinkit_data; 

SELECT CAST(AVG (Total_Sales) AS DECIMAL(10,2))  AS Avg_Sales  FROM blinkit_data ;

SELECT COUNT(*) AS No_Of_Items FROM blinkit_data;

SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS 
Total_Sales_Million 
FROM blinkit_data 
WHERE Item_Fat_Content ='Low Fat';

SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS 
Total_Sales_Million 
FROM blinkit_data 
WHERE Outlet_Establishment_Year =2022;

SELECT CAST(AVG (Total_Sales) AS DECIMAL(10,2))  AS Avg_Sales  FROM blinkit_data
WHERE Outlet_Establishment_Year =2022;

SELECT COUNT(*) AS No_Of_Items FROM blinkit_data
WHERE Outlet_Establishment_Year =2022;

SELECT AVG(Rating) AS Avg_Rating FROM blinkit_data;

SELECT Item_Fat_Content, SUM(Total_Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

SELECT Item_Fat_Content, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(AVG (Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    CAST (AVG(Rating)  AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

SELECT Item_Fat_Content, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(AVG (Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    CAST (AVG(Rating)  AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit_data
WHERE Outlet_Establishment_Year =2022
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;


SELECT Item_type, 
    CAST(SUM(Total_Sales)\1000 AS DECIMAL(10,2)) AS Total_Sales_Thousands,
    CAST(AVG (Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    CAST (AVG(Rating)  AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_type
ORDER BY Total_Sales_Thousands DESC;