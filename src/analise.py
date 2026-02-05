import duckdb
conn = duckdb.connect()

parquet_path = '../camadas/silver/dados_silver_parquet/v1_sem_duplicatas.parquet'

with open('queries/describe.sql', 'r') as f:
    query = f.read()
query = query.replace('{parquet_path}', parquet_path)
result = conn.execute(query).df()

print(result)