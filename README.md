
# Projeto - Análise de Vendas

## Resumo

Análise da receita da empresa Contoso por categoria de produto, região e canal de venda (canal físico e canal online), com o objetivo de indicar onde a empresa pode avaliar investimentos.

## Demanda

"A empresa quer entender quais categorias de produtos e regiões geram mais receita em cada canal (canal físico x canal online) e o que esses resultados indicam sobre onde a empresa deveria investir."

## Base de dados e ferramentas

- **Base:** ContosoRetailDW (tabelas de fato `FactSales` e `FactOnlineSales`; dimensões `DimProduct`, `DimProductSubcategory`, `DimProductCategory`, `DimStore`, `DimCustomer` e `DimGeography`)
- **Ferramenta:** SQL Server
- **Técnicas:** `JOIN`, `UNION ALL`, CTE e window function (`SUM() OVER ()`)
- **Métrica:** receita (`SalesAmount`), em US$

## Pergunta 1: Categoria

**Quais categorias geram mais receita em cada canal (canal físico x canal online)?**

A categoria Home Appliances apresentou a maior receita no canal físico, com US$ 3.922.736.787,19, e também foi a categoria de maior receita no canal online, com US$ 833.911.778,54.

## Pergunta 2: Região

**Quais regiões geram mais receita em cada canal (canal físico x canal online)?**

A região United States apresentou a maior receita tanto no canal físico quanto no canal online.

No canal físico, a receita foi de US$ 7.036.656.457,48, enquanto no canal online foi de US$ 953.619.327,92.

## Pergunta 3: Canais

**Quanto cada canal representa da receita total (canal físico x canal online)?**

- Canal físico: 82,04% da receita total.
- Canal online: 17,96% da receita total.

## Insight

A categoria Home Appliances apresentou a maior receita nos dois canais, enquanto a região United States apresentou a maior receita entre as regiões. Além disso, o canal físico concentra a maior parte da receita total, representando 82,04%, contra 17,96% do canal online.

## Recomendação

Os resultados indicam que a empresa pode avaliar oportunidades de investimento na categoria Home Appliances, principalmente na região United States e no canal físico, considerando que esses segmentos apresentaram os maiores valores de receita na análise.

## Limitações
- A análise considera apenas receita, sem custo, margem ou lucro.
- O "canal físico" corresponde à tabela `FactSales` inteira, o que inclui também os canais Catalog e Reseller.
- Não foi feita análise da evolução da receita ao longo do tempo.
