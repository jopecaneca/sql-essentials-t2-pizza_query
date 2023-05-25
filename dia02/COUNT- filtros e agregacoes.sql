-- Databricks notebook source
SELECT count(*) 

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT count(*) 

FROM silver.pizza_query.pedido

WHERE descUF = 'Amazonas'

-- COMMAND ----------

SELECT descUF,
        count(*) As qtePedidos

FROM silver.pizza_query.pedido

GROUP BY descUF
ORDER BY qtePedidos DESC

LIMIT 6

-- COMMAND ----------

SELECT descUF,
        count(*) As qtePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
ORDER BY qtePedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT descUF,
        count(*) As qtePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF

HAVING qtePedidos >= 75

ORDER BY qtePedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT descUF,
        flKetchup,
        count(*) As qtePedidos

FROM silver.pizza_query.pedido


GROUP BY descUF, flKetchup


ORDER BY descUF, flKetchup


-- COMMAND ----------


