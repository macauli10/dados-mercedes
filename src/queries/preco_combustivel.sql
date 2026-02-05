SELECT 
    fuel_type,
    COUNT(*) as quantidade,
    AVG(base_price_usd) as preco_medio,
    MIN(base_price_usd) as preco_minimo,
    MAX(base_price_usd) as preco_maximo
FROM '../camadas/silver/dados_silver_parquet/v1_sem_duplicatas.parquet'
GROUP BY fuel_type
ORDER BY preco_medio DESC