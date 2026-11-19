// MongoDB examples: use agrimart
db.daily_market_prices.insertMany([
 {date:"2026-11-01",crop:"Tomato",market:"KR Market",district:"Bengaluru",modal_price:26,arrival_qty:120},
 {date:"2026-11-01",crop:"Onion",market:"KR Market",district:"Bengaluru",modal_price:30,arrival_qty:140},
 {date:"2026-11-01",crop:"Potato",market:"Mysuru Market",district:"Mysuru",modal_price:21,arrival_qty:130}
]);
db.daily_market_prices.aggregate([{$group:{_id:"$crop",avg_price:{$avg:"$modal_price"}}},{$sort:{avg_price:-1}}]);
db.daily_market_prices.createIndex({crop:1,date:1});
db.daily_market_prices.find({crop:"Tomato"});
db.daily_market_prices.updateOne({crop:"Tomato"},{$set:{sample_updated:true}});
db.daily_market_prices.deleteOne({crop:"Potato"});
