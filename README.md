# AgriMart starter project
This package contains a small starter implementation for Farm Produce Supply and Market Price Analytics.

**Dataset is synthetic sample data, not official market data.** Scripts are examples and have not been verified on a live MySQL/MongoDB installation.

Files:
- sample_market_prices.csv: sample prices and arrival quantity
- schema.sql: MySQL starter schema
- queries.sql: example analytics queries
- analyze_csv.py: Python/pandas analysis and chart generation
- mongodb_examples.js: MongoDB insert, aggregate, index, find, update, delete examples

Python: `pip install pandas matplotlib`, then `python analyze_csv.py`.
MySQL: run schema.sql in Workbench, then queries.sql. CSV import/mapping into SQL tables is not automated.
MongoDB: open mongosh, select `use agrimart`, then run mongodb_examples.js.

Do not represent sample data or illustrative screenshots as actual verified execution results.
