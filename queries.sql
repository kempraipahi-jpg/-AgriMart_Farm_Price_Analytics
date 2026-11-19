USE agrimart;
-- Average modal price by crop
SELECT c.crop_name, AVG(p.modal_price) avg_price FROM daily_prices p JOIN crops c USING(crop_id) GROUP BY c.crop_name;
-- Market comparison
SELECT m.market_name,c.crop_name,AVG(p.modal_price) avg_price FROM daily_prices p JOIN crops c USING(crop_id) JOIN markets m USING(market_id) GROUP BY m.market_name,c.crop_name;
-- Highest arrivals
SELECT c.crop_name,m.market_name,p.arrival_qty FROM daily_prices p JOIN crops c USING(crop_id) JOIN markets m USING(market_id) ORDER BY arrival_qty DESC LIMIT 5;
