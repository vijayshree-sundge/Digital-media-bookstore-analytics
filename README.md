\# Digital Media \& Bookstore Analytics System



A relational database system designed to model, seed, and extract business intelligence from a digital bookstore storefront. This project demonstrates relational database design, data normalization, and complex analytical auditing using PostgreSQL.



\---



📂 Project Structure



text

digital-media-bookstore-analytics/

├── schema.sql             # Relational table definitions and constraint rules

├── seed\_data.sql          # Populated mock data records for testing environments

└── analytics\_queries.sql  # Production-ready analytical queries (CTEs, Window Functions)



🛠️ Tech Stack \& Key SQL Concepts

Engine: PostgreSQL



Schema Design: Primary/Foreign Key relations, Unique constraints



Advanced Analysis: Common Table Expressions (CTEs), Window Functions (RANK() OVER), Aggregations, Data type formatting (TO\_CHAR)



📊 Business Insights Uncovered

1\. Customer Lifetime Value (CLV)

Query: Multi-table JOIN with SUM and GROUP BY.



Value: Isolates the top 5 spending customers globally, allowing marketing teams to target high-value clients with exclusive loyalty rewards.



2\. Track Performance Ranking

Query: Window Function using RANK() PARTITION BY album\_id.



Value: Groups tracks by their parent album and ranks them by duration. This identifies standout "epic length" tracks automatically for curated media playlist placement.



3\. Regional Market Benchmarking

Query: Multi-layered CTEs coupled with a CROSS JOIN.



Value: Calculates localized country sales numbers and filters for regions generating revenue strictly above the global benchmark average, highlighting high-growth territories.

