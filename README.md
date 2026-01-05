# Football Data Engineering & Optimization - RiseData Case Study

## 📌 Project Overview
This project focuses on the transformation and optimization of a non-normalized football match dataset into a high-performance relational database. As a Data Specialist for RiseData, the objective was to eliminate data redundancy and ensure information integrity through advanced normalization techniques.

## 🛠️ Technical Challenges & Solutions
- **Database Normalization**: Successfully transformed raw data into the **Third Normal Form (3FN)**, defining atomic entities for Players, Teams, Stadiums, and Referees.
- **Data Modeling**: Designed a comprehensive Entity-Relationship (ER) model, resolving complex many-to-many (N:M) relationships—such as the link between Players and Matches—using associative tables.
- **Referential Integrity**: Implemented Primary Keys (PK) and Foreign Keys (FK) to guarantee data consistency and prevent record orphaning.

## 📊 Data Analysis (SQL Insights)
The project includes a suite of 20 advanced SQL queries designed to extract strategic business intelligence, including:
- **Performance Metrics**: Historical goal-scoring analysis for elite players (e.g., Karim Benzema).
- **Demographic Analysis**: Player distribution by nationality and age group averages.
- **Efficiency Audits**: Analyzing stadium capacity vs. match attendance and home vs. away team performance.

## 📂 Repository Structure
- `Script SQL DB infutbol.sql`: Complete DDL/DML script for database creation and analysis.
- `Diagrama ER.mwb`: The visual architecture of the database model.
- `Normalized_Tables.csv`: Processed datasets ready for BI tool consumption.

## 🚀 Skills & Tools Demonstrated
- **SQL / MySQL Workbench**
- **Relational Data Modeling**
- **Database Normalization (1FN, 2FN, 3FN)**
- **Data Engineering Best Practices**
