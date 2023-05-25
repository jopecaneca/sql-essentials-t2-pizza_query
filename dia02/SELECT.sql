-- Databricks notebook source
SELECT *
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT descItem, 
      vlPreco,
      12 + 51 as vlExem
FROM silver.pizza_query.produto

-- COMMAND ----------


