SELECT 
    model,
    COUNT(*) as total_vendas,
    AVG(base_price_usd) as preco_medio,
    AVG(horsepower) as potencia_media
FROM '../camadas/silver/dados_silver_parquet/v1_sem_duplicatas.parquet'
GROUP BY model
ORDER BY total_vendas DESC
LIMIT 10