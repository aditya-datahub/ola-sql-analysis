# 🚖 Ola SQL Analysis

A **SQL-based data analysis project** on Ola ride booking data to uncover insights on ride trends, cancellations, payment methods, and customer behavior.

---

## 📊 Project Overview

This project focuses on analyzing Ola’s booking data using **SQL queries and aggregate functions**.  
The goal is to extract actionable business insights such as:

- 🚗 Most frequently used ride types  
- 💸 Popular payment methods  
- ❌ Cancellation trends  
- ⭐ Top-rated drivers and customers  
- 📅 Peak booking days and time slots  

---

## 🧠 Key Objectives

1. Identify patterns in **ride demand and cancellations**.  
2. Explore **customer preferences** across payment modes and ride categories.  
3. Analyze **average ratings**, **ride distances**, and **spending behavior**.  
4. Generate useful SQL **views and aggregations** for dashboard use.

---

## 🗂️ Dataset

The dataset Bookings.csv contains ride-level booking details from Ola. Below are the key columns used in this analysis:

| Column Name | Description |
|--------------|-------------|
| Booking_ID | Unique ID for each ride |
| Customer_ID | Customer identifier |
| Driver_ID | Driver identifier |
| Vehicle_Type | Mini, Prime, SUV, etc. |
| Ride_Distance | Distance (in km) |
| Ride_Fare | Fare amount |
| Payment_Method | Cash, UPI, Card |
| Booking_Status | Completed / Cancelled |
| Customer_Rating | Rating given by customer |
| Ride_Date | Date of booking |

---

## 🧩 SQL Techniques Used

- **Aggregation Functions:** `SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`  
- **Joins:** Combining multiple tables for insights  
- **Filtering:** Using `WHERE`, `BETWEEN`, `LIKE`  
- **Grouping:** `GROUP BY` and `HAVING`  
- **Sorting:** `ORDER BY` for ranking insights  
- **Views:** For saving reusable queries  

---

## 📈 Sample Insights

| Insight | Description |
|----------|-------------|
| 🚘 **Most Popular Ride Type** | Prime Sedan had the highest booking frequency. |
| 💰 **Preferred Payment Mode** | UPI and Credit Card dominated overall payments. |
| ⏰ **Peak Hours** | Bookings peaked between 6–9 PM on weekends. |
| ⚠️ **Cancellation Trend** | Cancellations were higher during rainy months. |
| ⭐ **Customer Rating Insight** | SUV rides had slightly higher average ratings. |

---

### 🗂️ File Structure

```bash
ola-sql-analysis/
│
├── 📄 Bookings.csv            # Dataset containing Ola ride details
├── 🧠 ola_data_analysis.sql   # SQL scripts and analytical queries
├── 📘 README.md               # Project documentation
└── ⚖️ LICENSE                 # MIT License

```
---

## 🚀 How to Use

1. Clone the repository  
   ```bash
   git clone https://github.com/aditya-datahub/ola-sql-analysis.git

2. Import the dataset (Bookings.csv) into your SQL environment (e.g., MySQL, PostgreSQL, or SQLite).

3. Run the queries in ola_data_analysis.sql to explore insights and results.
