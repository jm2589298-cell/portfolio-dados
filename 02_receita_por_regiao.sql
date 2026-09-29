USE ContosoRetailDW;

-- RECEITA POR REGIÃO (LOJA FÍSICA)

SELECT 
G.RegionCountryName,
SUM(F.SalesAmount) AS RECEITA
FROM FactSales AS F
INNER JOIN DimStore AS D
ON D.StoreKey = F.StoreKey
INNER JOIN DimGeography AS G
ON G.GeographyKey = D.GeographyKey
GROUP BY G.RegionCountryName
ORDER BY RECEITA DESC



-- RECEITA POR REGIÃO (LOJA ONLINE)

SELECT 
G1.RegionCountryName,
SUM(F1.SalesAmount) AS RECEITA
FROM FactOnlineSales AS F1
INNER JOIN DimStore AS D1
ON D1.StoreKey = F1.StoreKey
INNER JOIN DimGeography AS G1
ON G1.GeographyKey = D1.GeographyKey
GROUP BY G1.RegionCountryName
ORDER BY RECEITA DESC