SQL Data Analytics Project
A collection of production-ready T-SQL analytics scripts built on top of a structured data warehouse. This project demonstrates practical SQL techniques used in real-world analytics workflows — from data exploration and quality checks to business KPIs, trend analysis, and customer segmentation.
Note: This project uses the Gold layer output from my SQL Data Warehouse Project as its data source.



Project Objectives
	∙	Demonstrate clean, reusable SQL for analytics and BI reporting
	∙	Apply real-world analytical techniques on structured warehouse data
	∙	Build a reference library of SQL patterns for common business questions


What This Project Covers
🔍 Data Exploration
Scripts to quickly understand and inspect a dataset before analysis:
	∙	Table summaries and row counts
	∙	Value distributions and frequency checks
	∙	Missing data and NULL detection
	∙	Date range validation
	∙	Duplicate detection
📈 Business Metrics & KPIs
Queries that generate core business numbers:
	∙	Total and segmented revenue
	∙	Average pricing and margin analysis
	∙	Sales volume by product and category
	∙	Category-level performance comparisons
⏱ Time-Based Insights
Analysis of patterns across time:
	∙	Monthly and yearly sales trends
	∙	First vs. last order behaviour per customer
	∙	Date gap analysis (order → transaction → shipping)
	∙	Seasonal performance patterns
📊 Cumulative & Moving Analysis
Advanced aggregation techniques:
	∙	Running totals using window functions
	∙	Moving averages over rolling time windows
	∙	Period-over-period performance comparisons
🧩 Segmentation & Grouping
Breakdowns to support targeted decision-making:
	∙	Customer segmentation by purchase behaviour and profile
	∙	Product category grouping and ranking
	∙	High-value vs. low-value customer identification



sql-data-analytics-project/
│
├── scripts/
│   ├── 01_db_exploration.sql 
│   ├── 02_db_dimension_explorations.sql
│   ├── 03_db_date_range_exploration.sql
│   ├── 04_db_measure_exploration.sql 
│   ├── 05_db_magnitude_analysis.sql    
│   ├── 06_db_ranking_analysis.sql      
│   ├── 07_change_over_time_analysis.sql 
│   ├── 08_db_cumulative_analysis.sql 
│   ├── 09_db_performance_analysis.sql  
│   ├── 10_db_part_to_whole_analysis.sql 
│   ├── 11_db_data_segmentation_analysis.sql 
│   ├── 12_db_customer_report.sql
│   └── 13_db_product_report.sql       
│
└── README.md








