
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

## Observações

- No canal físico, a região é a da loja (`DimStore`). No canal online, é a do cliente (`DimCustomer`).
- Canal físico = `FactSales` inteira e canal online = `FactOnlineSales` inteira. É uma simplificação, já que a `FactSales` também inclui outros canais (como Catalog e Reseller).
Três observações sobre o texto:

Troquei o "X" por "x" nos títulos, só por padrão.
Não mexi nos números do seu texto, só corrigi o ponto final da Pergunta 2 e juntei a Recomendação numa linha.
Quando o dashboard do Power BI estiver pronto, acrescente "e Power BI" em Ferramenta.
Para o arquivo .sql: abra o arquivo da análise de região no repositório, clique no lápis, cole a versão corrigida das duas queries e faça o commit. Assim o código no GitHub fica igual ao que gerou os números do README.

# Análise de Vendas: Canal Físico x Canal Online

## Resumo
Análise da receita da empresa Contoso por categoria de produto, região e canal de venda (canal físico e canal online), com o objetivo de indicar onde a empresa pode avaliar investimentos.

## Demanda
"A empresa quer entender quais categorias de produtos e regiões geram mais receita em cada canal (canal físico x canal online) e o que esses resultados indicam sobre onde a empresa deveria investir."

## Base de dados e ferramentas
- **Base:** ContosoRetailDW (tabelas FactSales e FactOnlineSales;dimensões DimProduct, DimProductSubcategory, DimProductCategory, DimStore e DimGeography)
)
- **Ferramenta:** SQL Server
- **Técnicas:** JOIN, UNION ALL, CTE e window function (SUM() OVER ())
- **Métrica:** receita (SalesAmount), em US$

## Pergunta 1: Categoria
**Quais categorias geram mais receita em cada canal (canal físico x canal online)?**

A categoria Home Appliances apresentou a maior receita no canal físico, com US$ 3.922.736.787,19, e também foi a categoria de maior receita no canal online, com US$ 833.911.778,54.

## Pergunta 2: Região
**Quais regiões geram mais receita em cada canal (canal físico x canal online)?**

A região United States apresentou a maior receita tanto no canal físico quanto no canal online.

No canal físico, a receita foi de US$ 7.036.656.457,48, enquanto no canal online foi de US$ 1.031.261.452,79.

## Pergunta 3: Canais
**Quanto cada canal representa da receita total (canal físico x canal online)?**

Canal físico: 82,04% da receita total
Canal online: 17,96% da receita total
## Insight
A categoria Home Appliances apresentou a maior receita nos dois canais, enquanto a região United States apresentou a maior receita entre as regiões. Além disso, o canal físico concentra a maior parte da receita total, representando 82,04%, contra 17,96% do canal online.

## Recomendação
Os resultados indicam que a empresa pode avaliar oportunidades de investimento na categoria Home Appliances, principalmente na região United States e no canal físico, considerando que esses segmentos apresentaram os maiores valores de receita na análise.

## Limitações
- A análise considera apenas receita, sem custo, margem ou lucro.
- O "canal físico" corresponde à tabela FactSales inteira, o que inclui também os canais Catalog e Reseller.
- Não foi feita análise da evolução da receita ao longo do tempo.

Updating the README with corrected values and formatting.
Updating the README with corrected values and formatting.
Esse é o README que está no GitHub, e ele ainda tem o valor antigo do online (US$ 1.031.261.452,79). Encontrei 4 pontos para corrigir:

Pergunta 2: o online deve ser US$ 953.619.327,92.
Lista de tabelas: falta a DimCustomer, e há um ) sobrando na linha de baixo e falta um espaço depois do ;.
Limitações: falta dizer que a região do online é a do cliente, e a da loja física é a da loja.
Formatação: os itens da Pergunta 3 estavam sem ponto final, o que não muda nada no GitHub, mas deixei igual ao resto.
Aqui está a versão corrigida, mantendo a sua estrutura com a seção "Limitações":

markdown
# Análise de Vendas: Canal Físico x Canal Online

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
- Na análise por região, o canal físico usa a região da loja (`DimStore`) e o canal online usa a região do cliente (`DimCustomer`).
- Não foi feita análise da evolução da receita ao longo do tempo.
Para atualizar, abra o README.md no repositório, clique no lápis, cole o texto no lugar do antigo e faça o Commit changes.

Depois disso, suba também o arquivo .sql com a query do online corrigida, para o código no GitHub ficar igual aos números do README.





Claude é uma IA e pode cometer erros. Confira sempre as respostas.
