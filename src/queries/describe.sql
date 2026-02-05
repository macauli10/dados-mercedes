SELECT 
    COUNT(*) as n,
    AVG(base_price_usd) as media,
    STDDEV(base_price_usd) as desvio_padrao,
    MIN(base_price_usd) as minimo,
    MAX(base_price_usd) as maximo,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY base_price_usd) as mediana
FROM '../camadas/silver/dados_silver_parquet/v1_sem_duplicatas.parquet'