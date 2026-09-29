USE ContosoRetailDW;

-- RECEITA POR CATEGORIA (LOJA FÍSICA)

SELECT 
ProductCategoryName,
'Loja Física' AS CANAL,
SUM(F.SalesAmount) AS RECEITA
FROM FactSales AS F
INNER JOIN DimProduct AS D
ON D.ProductKey = F.ProductKey
INNER JOIN DimProductSubcategory AS SUB
ON SUB.ProductSubcategoryKey = D.ProductSubcategoryKey
INNER JOIN DimProductCategory AS CAT
ON CAT.ProductCategoryKey = SUB.ProductCategoryKey
GROUP BY ProductCategoryName


UNION ALL

-- RECEITA POR CATEGORIA (LOJA ONLINE)

SELECT 
ProductCategoryName,
'Loja Online' AS CANAL,
SUM(FC.SalesAmount) AS RECEITA
FROM FactOnlineSales AS FC 
INNER JOIN DimProduct AS DC
ON DC.ProductKey = FC.ProductKey
INNER JOIN DimProductSubcategory AS SUBC
ON SUBC.ProductSubcategoryKey = DC.ProductSubcategoryKey
INNER JOIN DimProductCategory AS CATC
ON CATC.ProductCategoryKey = SUBC.ProductCategoryKey
GROUP BY ProductCategoryName
ORDER BY ProductCategoryName, CANAL
 

