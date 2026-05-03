SQL Data Analytics Project
A collection of production-ready T-SQL analytics scripts built on top of a structured data warehouse. This project demonstrates practical SQL techniques used in real-world analytics workflows — from data exploration and quality checks to business KPIs, trend analysis, and customer segmentation.

Note: This project uses the Gold layer output from my SQL Data Warehouse Project as its data source.


Project Objectives

Demonstrate clean, reusable SQL for analytics and BI reporting
Apply real-world analytical techniques on structured warehouse data
Build a reference library of SQL patterns for common business questions


What This Project Covers
🔍 Data Exploration
Scripts to quickly understand and inspect a dataset before analysis:

Table summaries and row counts
Value distributions and frequency checks
Missing data and NULL detection
Date range validation
Duplicate detection

📈 Business Metrics & KPIs
Queries that generate core business numbers:

Total and segmented revenue
Average pricing and margin analysis
Sales volume by product and category
Category-level performance comparisons

⏱ Time-Based Insights
Analysis of patterns across time:

Monthly and yearly sales trends
First vs. last order behaviour per customer
Date gap analysis (order → transaction → shipping)
Seasonal performance patterns

📊 Cumulative & Moving Analysis
Advanced aggregation techniques:

Running totals using window functions
Moving averages over rolling time windows
Period-over-period performance comparisons

🧩 Segmentation & Grouping
Breakdowns to support targeted decision-making:

Customer segmentation by purchase behaviour and profile
Product category grouping and ranking
High-value vs. low-value customer identification


Project Structure
sql-data-analytics-project/
│
├── scripts/
│   ├── 01_db_exploration.sql           -- Table summaries, row counts, value distributions
│   ├── 02_db_dimension_explorations.sql -- Dimension table inspection and profiling
│   ├── 03_db_date_range_exploration.sql -- Date range validation and gap detection
│   ├── 04_db_measure_exploration.sql   -- Measure and metric baseline checks
│   ├── 05_db_magnitude_analysis.sql    -- Volume and scale analysis
│   ├── 06_db_ranking_analysis.sql      -- Rankings using window functions
│   ├── 07_change_over_time_analysis.sql -- Monthly and yearly trend analysis
│   ├── 08_db_cumulative_analysis.sql   -- Running totals and moving averages
│   ├── 09_db_performance_analysis.sql  -- KPI and business performance metrics
│   ├── 10_db_part_to_whole_analysis.sql -- Contribution and percentage breakdowns
│   ├── 11_db_data_segmentation_analysis.sql -- Customer and product segmentation
│   ├── 12_db_customer_report.sql       -- Full customer analytics report
│   └── 13_db_product_report.sql        -- Full product analytics report
│
└── README.md

Technologies Used
ToolPurposeSQL Server ExpressDatabase engineT-SQLQuery languageSSMSQuery development and testingGit & GitHubVersion control

Data Source
All scripts run against the Gold layer of the SQL Data Warehouse project, which contains clean, modelled fact and dimension tables:
TableDescriptionfact_salesCore transactional sales datadim_customerCustomer profiles and attributesdim_productProduct details and categoriesdim_dateDate dimension for time-based analysisdim_locationGeographic breakdown

Key SQL Techniques Demonstrated

JOIN (INNER, LEFT, RIGHT) across fact and dimension tables
GROUP BY and HAVING for aggregated filtering
Window functions: ROW_NUMBER(), RANK(), SUM() OVER(), AVG() OVER()
Common Table Expressions (CTEs)
Date functions: YEAR(), MONTH(), DATEDIFF(), DATEADD()
CASE WHEN for conditional segmentation
Subqueries and derived tables
ISNULL() and COALESCE() for NULL handling

uthor
Muhammad Nur Iman 🇲🇾
Aspiring Data Engineer · Malaysia
📧 ieymnn17@gmail.com
