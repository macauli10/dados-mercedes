import duckdb
conn = duckdb.connect()

parquet_path = '../ml_features.parquet'

with open('consulta.sql', 'r') as f:
    query = f.read()
query = query.replace('{parquet_path}', parquet_path)
result = conn.execute(query).df()

print(result)