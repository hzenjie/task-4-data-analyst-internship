-- ====================================================================
-- DATA ANALYST INTERNSHIP - TASK 4: SQL FOR DATA ANALYSIS
-- Dataset: E-commerce Order Score Prediction
-- Tool Used: SQLite (DB Browser for SQLite)
-- ====================================================================

-- Query 1: Payment Type Analysis for High-Satisfaction Orders (Score >= 4)
SELECT max_payment_type, AVG(sum_price) AS rata_rata_harga
FROM orders
WHERE score >= 4
GROUP BY max_payment_type
ORDER BY rata_rata_harga DESC;

-- Query 2: Aggregate Functions (Total Revenue & Average Shipping Freight)
SELECT 
    SUM(sum_price) AS total_pendapatan, 
    AVG(sum_freight) AS rata_rata_ongkir 
FROM orders;

-- Query 3: Creating a View for Order Performance Analysis by Score
DROP VIEW IF EXISTS ringkasan_skor;

CREATE VIEW ringkasan_skor AS
SELECT 
    score, 
    COUNT(order_id) AS total_order, 
    AVG(mean_distance_km) AS rata_rata_jarak_km
FROM orders
GROUP BY score;

-- Fetching data from the created View
SELECT * FROM ringkasan_skor;