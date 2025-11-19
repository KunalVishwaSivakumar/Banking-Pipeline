# 🏦 Banking Modern Data Stack  
### **Snowflake • dbt • Apache Airflow • Kafka • Debezium • Python • Docker • GitHub CI/CD**

Welcome to a fully engineered **end‑to‑end banking data platform** designed to mirror real production data ecosystems used by modern financial institutions.

This project brings together streaming, warehousing, orchestration, transformation, and CI/CD into one unified system — all powered by today’s most in‑demand data engineering tools.

---

# 🚀 Project Summary

This repository demonstrates how raw operational banking data flows through a **complete data pipeline**, from generation all the way to curated analytics layers.

It includes:

- Synthetic OLTP banking data  
- Real‑time CDC pipelines  
- Multi‑layer Snowflake warehouse  
- dbt transformations + snapshots  
- Airflow‑driven orchestration  
- Automated CI/CD for reliability  

The goal is to provide a hands‑on, production‑style architecture suitable for demos, learning, and portfolio projects.

---

# 🧱 High‑Level Architecture

```
Data Generator → Kafka + Debezium (CDC) → MinIO (S3) → Airflow → Snowflake  
       ↓                   ↓                     ↓            ↓  
 Synthetic OLTP      Real-time changes      Bronze layer   dbt models  
```

**Pipeline Lifecycle**

1. **Synthetic Events** – Banking records created using Python + Faker.  
2. **CDC Capture** – Debezium monitors Postgres WAL logs and pushes events to Kafka topics.  
3. **Object Storage Landing Zone** – Events written to MinIO (S3-compatible).  
4. **Airflow Jobs** – Batch and incremental ingestion into Snowflake.  
5. **dbt Transformations** – Standardized staging, dimensions, facts, and SCD2 snapshots.  
6. **CI/CD** – Every PR triggers automated dbt tests, compilation, and validations.

---

# ⚡ Technologies Used

### **Compute & Warehousing**
- Snowflake (Cloud Data Warehouse)  
- dbt (Transformations, testing, documentation)

### **Data Movement & Streaming**
- Apache Kafka  
- Debezium (CDC from Postgres WAL)  
- MinIO (S3-compatible object storage)

### **Orchestration**
- Apache Airflow (DAG scheduling, ingestion, and automation)

### **Development & Deployment**
- Docker / Docker Compose  
- Python (data generation, utility scripts)  
- GitHub Actions (CI/CD)

---

# 📂 Repository Layout

```
banking-modern-datastack/
│
├── .github/workflows/        # CI/CD pipelines
├── banking_dbt/              # dbt project (models, marts, snapshots)
├── consumer/                 # Kafka-to-MinIO ingestion
├── data-generator/           # Synthetic data creation
├── docker/                   # Airflow configs, DAGs
├── kafka-debezium/           # CDC connectors for Postgres
├── postgres/                 # OLTP schema + seed scripts
├── docker-compose.yml
├── requirements.txt
└── README.md
```

---

# 🔎 Key Features

### ✔ Realistic Banking OLTP Simulation  
Customers, accounts, transactions — all generated with proper relationships and constraints.

### ✔ Real-Time CDC Pipeline  
Debezium monitors Postgres and streams every insert/update/delete into Kafka.

### ✔ S3‑Style Raw Zone  
Kafka events land in MinIO buckets for downstream batch or micro‑batch ingestion.

### ✔ Airflow‑Driven ETL  
Automated pipelines move data into Snowflake’s **Bronze → Silver → Gold** layers.

### ✔ dbt Transformations & Snapshots  
- Clean staging models  
- Dimensional models & fact tables  
- Slowly Changing Dimensions (SCD2) via dbt snapshots

### ✔ CI/CD Integration  
GitHub Actions validate dbt models, run tests, and ensure every change remains production‑ready.

---

# 🎯 Final Outcomes

By the end of pipeline execution, you will have:

- Fully automated data ingestion from OLTP → Warehouse  
- Real‑time CDC events captured and stored reliably  
- Cleaned, conformed analytics tables ready for dashboards  
- Historical tracking of customer & account changes  
- A complete modern data stack setup runnable locally via Docker  

Perfect for:
- Data engineering portfolios  
- Demoing a real‑world architecture  
- Learning CI/CD, dbt, CDC, and orchestration  
- Showcasing Snowflake + modern tooling in action  

---



