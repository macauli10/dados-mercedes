SELECT 
    model,
    AVG(base_price_usd) as preco_medio,
    AVG(horsepower) as potencia_media,
    AVG(base_price_usd / horsepower) as custo_por_cv,
    RANK() OVER (ORDER BY AVG(base_price_usd / horsepower)) as rank_custo_beneficio
FROM '../camadas/silver/dados_silver_parquet/v1_sem_duplicatas.parquet'
GROUP BY model
HAVING COUNT(*) > 50
ORDER BY custo_por_cv
LIMIT 10