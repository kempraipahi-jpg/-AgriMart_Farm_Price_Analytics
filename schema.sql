CREATE DATABASE IF NOT EXISTS agrimart; USE agrimart;
CREATE TABLE crops (crop_id INT AUTO_INCREMENT PRIMARY KEY, crop_name VARCHAR(80) UNIQUE NOT NULL);
CREATE TABLE markets (market_id INT AUTO_INCREMENT PRIMARY KEY, market_name VARCHAR(100), district VARCHAR(80));
CREATE TABLE daily_prices (price_id INT AUTO_INCREMENT PRIMARY KEY, crop_id INT, market_id INT, price_date DATE, min_price DECIMAL(10,2), max_price DECIMAL(10,2), modal_price DECIMAL(10,2), arrival_qty INT, FOREIGN KEY(crop_id) REFERENCES crops(crop_id), FOREIGN KEY(market_id) REFERENCES markets(market_id));
INSERT INTO crops(crop_name) VALUES ('Tomato'),('Onion'),('Potato');
INSERT INTO markets(market_name,district) VALUES ('KR Market','Bengaluru'),('Mysuru Market','Mysuru');
