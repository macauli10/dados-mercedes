# 🚗 Mercedes Car Sales - Data Engineering Pipeline

## 📋 Overview
Projeto de pipeline de dados para análise de vendas globais da Mercedes (2020-2025). Implementa arquitetura moderna com Python, DuckDB e arquitetura Medallion.

## 🏗️ Architecture - Medallion Layers

### **Bronze (Raw)**
- Dados brutos do Kaggle (12M+ registros)
- Formato original preservado
- Backup histórico

### **Silver (Cleaned)**
- Limpeza e padronização
- Tratamento de duplicatas e nulos
- Schema padronizado

### **Gold (Business-ready)**
- Dados agregados para diferentes consumidores
- Features para Machine Learning
- Otimizado para análises

## 🛠️ Tech Stack
- **Python** (Pandas, DuckDB)
- **SQL** (Consultas analíticas)
- **DuckDB** (Processamento columnar em Parquet)
- **Parquet** (Formato columnar otimizado)
- **Git** (Controle de versão)

## 📁 Project Structure
```
mercedes-dados/
├── camadas/
│   ├── bronze/           # Raw data (Parquet)
│   ├── silver/           # Cleaned data (Parquet)
│   └── gold/             # Business data (Parquet)
├── src/
│   ├── queries/          # SQL queries for DuckDB
│   └── analise.py      # Data analysis
├── samples/              # Data samples for GitHub
└── requirements.txt      # Python dependencies
```

## 🔧 Key Features

### **Data Processing**
- 12 milhões de registros processados
- Tratamento de duplicatas (3.153 removidas)
- Normalização de colunas e tipos
- Compressão Snappy para otimização

### **DuckDB Analytics**
```sql
-- Consultas diretas em Parquet
SELECT model, AVG(price) 
FROM 'camadas/silver/*.parquet'
GROUP BY model;
```

### **Machine Learning Ready**
- 479 features engineering
- Normalização (horsepower, price, year)
- One-hot encoding (model, color, fuel_type)
- Target: `base_price_usd` para regressão

## 📊 Data Sample
**Dataset completo:** 12,132,666 registros  
**Fonte:** [Kaggle - Mercedes Global Car Sales](https://www.kaggle.com/datasets/dhrubangtalukdar/mercedes-global-car-sales-2020-2025)  
**Samples incluídos:** `samples/` (1.000 registros cada)

## 🚀 Getting Started

1. **Clone repository**
```bash
git clone https://github.com/seu-usuario/mercedes-dados.git
```

2. **Install dependencies**
```bash
pip install -r requirements.txt
```

3. **Run pipeline**
```bash
python src/pipeline.py
```

4. **Analyze with DuckDB**
```bash
duckdb -c "SELECT * FROM 'camadas/gold/*.parquet' LIMIT 5;"
```

## 📈 Business Insights
- Top modelos por vendas
- Preço médio por tipo de combustível
- Correlação potência-preço
- Análise regional de vendas

## 🤝 Contribution
Este projeto demonstra habilidades em:
- Engenharia de dados com Python
- Arquitetura Medallion
- Processamento com DuckDB
- Feature engineering para ML
- Versionamento com Git

---

