# dbt E-Commerce Pipeline

An end-to-end dbt project built with DuckDB that demonstrates 
modern analytics engineering practices including data modeling, 
testing, and documentation.

## Project Overview

This project transforms raw e-commerce orders data through a 
medallion architecture using dbt Core and DuckDB.

## Pipeline Architecture

raw orders data (seed)
       ↓
stg_orders (staging — view)
       ↓
orders_summary (mart — table)

## Models

### Staging
- **stg_orders** — Cleans and standardizes raw orders data. 
Renames columns, adds is_completed boolean flag.

### Marts
- **orders_summary** — Aggregates orders by status with total 
counts and date ranges. Business-ready for dashboard consumption.

## Tests
- not_null on all primary keys
- unique on all primary keys
- accepted_values on order status column
- not_null on user_id

## Tools & Technologies
- dbt Core 1.11
- DuckDB
- SQL
- Git / GitHub

## How to Run

### Prerequisites
- Python 3.10+
- dbt-duckdb

### Setup
pip install dbt-duckdb
dbt seed
dbt run
dbt test
dbt docs generate && dbt docs serve

## Author
Aiswarya — Data & Analytics Professional
5+ years experience in ADF, Databricks, 
Ataccama, Collibra, and Power BI