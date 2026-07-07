# Retail Sales Performance Dashboard

Data Analytics & Business Intelligence internship project (Task 2) — Maincrafts Technology.
An end-to-end BI workflow: relational data modeling, SQL joins, Excel pivot analysis, and an
interactive Power BI dashboard, backed by a written business performance report.

## Overview

This project combines two related datasets — **Orders** and **Customers** — using SQL JOIN
operations, calculates key business KPIs, and visualizes them in a filterable Power BI dashboard.
The goal was to move beyond single-table analysis and practice real-world BI workflows: joining
relational data, deriving calculated metrics, and presenting them for business decision-making.

**What this project covers:**
- Relational data modeling and SQL JOIN queries
- KPI calculation (Total Sales, Total Profit, Profit Margin, AOV)
- Regional, category, and customer-segment performance analysis
- Discount impact and seasonal trend analysis
- An interactive, filterable Power BI dashboard
- A written business performance report with data-backed recommendations

## Dataset

Two related tables, joined on `Customer_ID`:

**Orders**
| Column | Description |
|---|---|
| Order_ID | Unique order identifier |
| Order_Date | Date of purchase |
| Customer_ID | Foreign key to Customers |
| Product_Category | Beauty / Clothing / Electronics |
| Quantity | Units purchased |
| Price_per_Unit | Unit price |
| Sales | Total sale value |
| Discount | Discount rate applied |
| Profit | Profit on the order |

**Customers**
| Column | Description |
|---|---|
| Customer_ID | Primary key |
| Customer_Name | Customer name |
| Region | North / South / East / West |
| Segment | Consumer / Corporate / Home Office |
| Gender | Customer gender |
| Age | Customer age |

1,000 orders across 1,000 unique customers, January 2023 – January 2024.

## Key KPIs

| KPI | Value |
|---|---|
| Total Sales | $456,000 |
| Total Profit | $71,306.28 |
| Overall Profit Margin | 15.64% |
| Total Orders | 1,000 |
| Total Customers | 1,000 |
| Average Order Value (AOV) | $456.00 |

## Key Insights

- **North** is the top-performing region on both revenue ($133,380) and margin (16.27%); **East**
  has the lowest revenue but a healthy margin (15.91%) — its shortfall is driven by order volume
  (246 orders vs North's 278), not pricing.
- **Beauty** has the highest profit margin (25.21%) despite the lowest sales volume of the three
  categories. **Electronics** leads on revenue ($156,905) but converts it least efficiently
  (7.22% margin) — about a third of Beauty's rate.
- **Consumer** is the largest segment by revenue (49.3% of total sales); **Home Office** is the
  smallest segment but the most profitable per dollar sold (17.99% margin).
- Discounting above **20%** pushes average profit margin negative (-1.12%); discount rate and
  profit margin show a strong negative correlation (-0.70). Margins hold up reasonably to a
  10% discount (16.03%) then fall off sharply beyond it.
- Sales are seasonal: **May** ($53,150) and **October** ($46,580) are peak months, **September**
  ($23,620) is the lowest, and **Q3** is consistently the weakest quarter overall.

## Dashboard

Built in Power BI with four KPI cards and five interactive visuals, filterable by Region, Product
Category, Order Date, and Customer Segment.

| Visual | Type | Shows |
|---|---|---|
| Total Sales by Region | Bar chart | Regional revenue comparison |
| Total Profit by Product Category | Column chart | Profitability by product category |
| Total Sales by Month | Line chart | Seasonal sales trend |
| Top Customers | Table | Highest-revenue customers |
| Total Sales by Segment | Pie chart | Revenue split by customer segment |

## Repository Structure

```
├── README.md
├── Orders.csv                                  # Raw orders data
├── Customers.csv                               # Raw customer data
├── 1_Mysql_task2_queries.sql                   # SQL JOIN queries & KPI calculations
├── 2_ExcelPivot_analysis.xlsx                  # Excel pivot table analysis
├── 3_Power_bi_Dashboard_analysis.pbix           # Power BI dashboard file
├── 4_Dashboard_screenshot.jpeg                 # Dashboard preview image
└── 5_Business_Performance_Analysis_Report.pdf  # Written business summary & recommendations
```

## Tools Used

- **MySQL / SQLite** — relational joins and KPI queries
- **Microsoft Excel** — pivot tables and calculated columns
- **Power BI** — interactive KPI dashboard
- **SQL** — `INNER JOIN`, `GROUP BY`, aggregate functions


## Learnings

Working across four tools on the same dataset made it clear how much a KPI's meaning depends on
the lens you view it through — the highest-revenue category (Electronics) wasn't the most
profitable one (Beauty), and the largest customer segment (Consumer) wasn't the most efficient
one (Home Office). This project reinforced relational joins, DAX/SQL aggregation, and how to turn
raw KPIs into a specific, defensible business recommendation rather than just a chart.

## Author
AKASH V H
Data Analytics & Business Intelligence Intern — Maincrafts Technology
