# Food Delivery Dark Kitchen Operations Intelligence Platform

## Industry
**E-commerce – Online Food Delivery & Dark Kitchen Operations**

## Project Overview

The **Food Delivery Dark Kitchen Operations Intelligence Platform** is a data analytics and business intelligence project designed to analyze the operational, customer, and financial performance of a dark-kitchen food delivery business.

The project uses **MySQL and SQL** for database creation, data validation, and analysis, and **Microsoft Power BI** for interactive dashboards and business intelligence reporting.

The solution analyzes customers, kitchens, riders, menu items, orders, inventory, complaints, and refunds to identify operational bottlenecks, customer experience issues, financial performance, and improvement opportunities.

### Business Areas Covered
- Order and revenue performance
- Kitchen operations
- Delivery and rider performance
- Customer experience and retention
- Inventory and food waste
- Complaints and refunds
- Discounts and profitability

## Project Objectives

- Build a structured relational database for dark-kitchen operations.
- Organize customer, kitchen, rider, menu, order, inventory, complaint, and refund data.
- Analyze order volume, revenue, costs, discounts, and profitability.
- Measure kitchen preparation and order fulfillment performance.
- Analyze cancellation patterns and operational delay reasons.
- Evaluate delivery performance and rider efficiency.
- Analyze customer ratings, complaints, and repeat customers.
- Monitor inventory waste and reorder-level information.
- Build interactive Power BI dashboards for management reporting.
- Generate actionable business recommendations.

## Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **MySQL** | Database creation and data storage |
| **SQL** | Data validation, querying, and analysis |
| **Microsoft Power BI** | Interactive dashboard development |
| **DAX** | KPI and calculated measure creation |
| **Power Query** | Data transformation and preparation |
| **Microsoft Excel** | Dataset source and data inspection |
| **GitHub** | Version control and documentation |

## Dataset Description

The project uses a **Dark Kitchen Enterprise Dataset** containing multiple related tables.

| Table | Description |
|---|---|
| **Customers** | Customer details, city, age, gender, and loyalty tier |
| **Kitchens** | Kitchen details, location, daily capacity, and staff count |
| **Riders** | Rider information, vehicle type, experience, and rating |
| **Menu** | Menu items, categories, cost price, and selling price |
| **Calendar** | Date, year, month, quarter, and weekday information |
| **Orders** | Main order transactions and operational details |
| **Order_Items** | Individual items and quantities within orders |
| **Inventory** | Stock quantity, waste quantity, and reorder levels |
| **Complaints** | Complaint type, status, and resolution time |
| **Refunds** | Refund amount and refund reason |

### Key Orders Columns

```text
OrderID, CustomerID, KitchenID, RiderID, OrderDate,
PreparationTime, DeliveryTime, OrderStatus, TotalAmount,
Discount, TotalCost, CustomerRating, DistanceKM,
PaymentMethod, DeliveryPartner, Weather, TrafficLevel,
TimeSlot, OrderPriority, CouponCode, DiscountType,
PreparationDelayReason, DeliveryDelayReason
```

### Order_Items Columns

```text
OrderItemID, OrderID, MenuID, Quantity
```

## Database Design

The database follows a relational structure with **Orders** acting as the central transaction table.

### Master / Reference Tables
- Customers
- Kitchens
- Riders
- Menu
- Calendar

### Transaction / Operational Tables
- Orders
- Order_Items
- Inventory
- Complaints
- Refunds

### Logical Relationships

```text
Customers ────────┐
Kitchens ─────────┤
Riders ───────────┤
                  ↓
               ORDERS
               /    \
              /      \
     ORDER_ITEMS     COMPLAINTS
          │              │
          ↓              ↓
        MENU          REFUNDS

Kitchens ───────→ Inventory
Calendar ────────→ Orders
```

## SQL Analysis

SQL was used to create the database, create tables, inspect data, validate row counts, and support business analysis.

### Database Creation

```sql
CREATE DATABASE DarkKitchenDB;
USE DarkKitchenDB;
```

### Tables Created

```text
Customers
Kitchens
Riders
Menu
Calendar
Orders
Order_Items
Inventory
Complaints
Refunds
```

### Data Validation

```sql
SHOW TABLES;
SHOW CREATE TABLE Orders;
SELECT * FROM DarkKitchenDB.orders;
```

A `UNION ALL` query was also used to validate the number of records in each table.

### SQL Analysis Areas
- Order volume
- Revenue and cost
- Kitchen performance
- Rider performance
- Cancellation analysis
- Customer analysis
- Inventory and food waste
- Complaint analysis
- Refund analysis
- Data validation

## Power BI Dashboard

Four interactive Power BI dashboards were developed.

### Dashboard 1 — Executive Overview
- Total Orders
- Total Revenue
- Net Profit
- Profit Margin
- Average Order Value
- Revenue Trends
- Revenue by Kitchen
- Order Status
- Top Items

### Dashboard 2 — Kitchen & Operations Analytics
- Delivered Orders
- Cancelled Orders
- Cancellation Rate
- Food Waste %
- Average Preparation Time
- Average Fulfillment Time
- Cancellation Rate by City
- Food Waste by Kitchen
- Cancellation Reasons

### Dashboard 3 — Delivery & Customer
- Average Delivery Time
- Active Riders
- Average Customer Rating
- Total Complaints
- Repeat Customers
- Delivery Time by City
- Complaint Rate
- Customer Rating by Loyalty Tier
- Rider Performance
- Payment Method

### Dashboard 4 — Financial Intelligence
- Previous Month Revenue
- Running Revenue
- Refund Rate
- Total Refund Amount
- Total Discounts
- Revenue vs Net Profit
- Profit Margin
- Discount and Refund Trends
- Monthly Financial Summary

## Key KPIs

| KPI | Business Purpose |
|---|---|
| **Total Orders** | Measures overall order volume |
| **Total Revenue** | Measures sales generated |
| **Net Profit** | Measures profitability |
| **Profit Margin %** | Measures profit relative to revenue |
| **Average Order Value** | Measures average revenue per order |
| **Cancellation Rate %** | Measures unsuccessful orders |
| **Food Waste %** | Measures inventory/food waste |
| **Average Preparation Time** | Measures kitchen efficiency |
| **Average Fulfillment Time** | Measures end-to-end fulfillment |
| **Average Delivery Time** | Measures delivery efficiency |
| **Average Customer Rating** | Measures customer satisfaction |
| **Total Complaints** | Measures customer service issues |
| **Repeat Customers** | Measures customer retention |
| **Refund Rate %** | Measures refund frequency |
| **Total Refund Amount** | Measures financial impact of refunds |
| **Total Discounts** | Measures promotional spending |

## Key Insights

1. **Revenue & Profitability:** The dashboard provides visibility into revenue, net profit, and profit margin, helping management understand both sales and profitability.
2. **Cancellation:** Cancellation analysis identifies unsuccessful orders and potential operational causes.
3. **Kitchen Efficiency:** Preparation-time analysis helps compare kitchen performance and identify bottlenecks.
4. **Fulfillment Performance:** Fulfillment-time analysis combines preparation and delivery performance to understand customer waiting time.
5. **Delivery Performance:** Delivery-time and rider analysis can support better rider allocation and delivery-zone planning.
6. **Customer Experience:** Customer ratings and complaint analysis highlight service-quality issues.
7. **Complaint Management:** Major complaint categories include Wrong Item, Cold Food, Packaging, Late Delivery, and Missing Item.
8. **Customer Retention:** Repeat-customer analysis provides opportunities for loyalty and retention strategies.
9. **Financial Leakage:** Discount and refund analysis helps understand their impact on profitability.
10. **Food Waste:** Inventory and waste analysis can reduce unnecessary food waste while maintaining product availability.

## Project Workflow

```text
Raw Dataset
     ↓
Data Inspection
     ↓
Data Cleaning & Validation
     ↓
MySQL Database Creation
     ↓
Table Creation
     ↓
SQL Data Validation
     ↓
SQL Analysis
     ↓
Power BI Data Connection
     ↓
Power Query Transformation
     ↓
DAX Measures & KPIs
     ↓
Dashboard Development
     ↓
Business Insights
     ↓
Recommendations
```

## Repository Structure

```text
Food-Delivery-Dark-Kitchen-Operations-Intelligence/
│
├── README.md
│
├── Dataset/
│   └── Dark_Kitchen_Enterprise_Dataset.xlsx
│
├── SQL/
│   ├── Database_Creation.sql
│   ├── Table_Creation.sql
│   ├── Data_Validation.sql
│   └── Analysis_Queries.sql
│
├── PowerBI/
│   └── Dark_Kitchen_Operations_Intelligence.pbix
│
├── Dashboard_Screenshots/
│   ├── Executive_Overview.png
│   ├── Kitchen_Operations.png
│   ├── Delivery_Customer.png
│   └── Financial_Intelligence.png
│
└── Documentation/
    └── Project_Report.pdf
```

## Dashboard Screenshots

The project contains four Power BI dashboard pages

1. **Executive Overview**

<img width="2196" height="1250" alt="Executive Overview" src="https://github.com/user-attachments/assets/25f6fe51-711b-4d42-a58b-c5d400d7cdc0" />


2. **Kitchen & Operations Analytics**
   
<img width="2202" height="1246" alt="Kitchen And Operation Analytics" src="https://github.com/user-attachments/assets/0a9f8844-4bd0-46b3-a9c5-4473d93e033d" />


3. **Delivery & Customer**

<img width="2192" height="1250" alt="Delivery And Customer" src="https://github.com/user-attachments/assets/d310abb0-cd94-4fd4-a347-058ed7a70be8" />


4. **Financial Intelligence**

<img width="2198" height="1248" alt="Financial Intelligence" src="https://github.com/user-attachments/assets/227025e5-3ec7-47ec-b82c-a45952d1d8aa" />


## How to Run the Project

### 1. Clone the Repository

```bash
git clone <your-github-repository-url>
cd Food-Delivery-Dark-Kitchen-Operations-Intelligence
```

### 2. Create the MySQL Database

Open **MySQL Workbench** and execute:

```sql
CREATE DATABASE DarkKitchenDB;
USE DarkKitchenDB;
```

### 3. Create Tables

Run the SQL scripts from the `SQL/` folder.

### 4. Load the Dataset

Import the corresponding Excel data into the MySQL tables.

### 5. Validate the Database

```sql
SHOW TABLES;
```

Then execute the row-count validation query.

### 6. Open Power BI

Open:

```text
PowerBI/Dark_Kitchen_Operations_Intelligence.pbix
```

### 7. Configure the Data Source

Connect Power BI to the MySQL database and update the required server/database connection details.

### 8. Refresh the Dataset

Click **Refresh** in Power BI.

### 9. Explore the Dashboards

```text
Executive Overview
        ↓
Kitchen & Operations
        ↓
Delivery & Customer
        ↓
Financial Intelligence
```

## Recommendations

- Reduce cancellations by monitoring preparation and delivery delay reasons.
- Optimize kitchen staffing according to demand and capacity.
- Improve order accuracy to reduce Wrong Item and Missing Item complaints.
- Improve packaging and temperature-control processes.
- Optimize rider allocation using delivery time, distance, traffic, and rider performance.
- Monitor discounts based on their impact on profitability.
- Analyze refunds to identify avoidable financial leakage.
- Use inventory analytics to reduce food waste.
- Create targeted retention campaigns for repeat and high-value customers.
- Maintain Power BI dashboards as a recurring management reporting system.

## Future Enhancements

- Real-time order monitoring
- Predictive demand forecasting
- Machine-learning-based cancellation prediction
- Delivery-time prediction
- Automated inventory-reorder recommendations
- Customer churn prediction
- Dynamic rider allocation
- Automated Power BI data refresh
- Integration with food-delivery APIs
- Advanced profitability and contribution-margin analysis

## Author

### **VARSHA S** (AF05247875)
Data & Business Analyst With AI
Anudip Foundation--Pallavaram, Chennai.

**Project:** Food Delivery Dark Kitchen Operations Intelligence Platform

**Industry:** E-commerce

**Technologies:** MySQL | SQL | Power BI | DAX | Power Query | Excel

**Project Focus:** Data Analytics | Business Intelligence | Operations Analytics | Customer Analytics | Financial Analytics

## License

This project is created for **educational, portfolio, and data analytics demonstration purposes**.
