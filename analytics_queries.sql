SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.country,
    COUNT(t.track_id) AS total_tracks_purchased,
    SUM(a.price) AS total_amount_spent
FROM Customers c
JOIN Tracks t ON 1=1 -- In your full database, this would link via an Invoice/Sales table
JOIN Albums a ON t.album_id = a.album_id
GROUP BY c.customer_id, customer_name, c.country
ORDER BY total_amount_spent DESC
LIMIT 5;

SELECT 
    a.album_id,
    a.title AS album_title,
    COUNT(t.track_id) AS total_tracks_sold,
    SUM(a.price) AS total_revenue
FROM Albums a
LEFT JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.album_id, a.title
ORDER BY total_revenue DESC;

SELECT 
    c.country,
    COUNT(c.customer_id) AS total_customers,
    SUM(a.price) AS regional_revenue
FROM Customers c
JOIN Tracks t ON 1=1 -- Placeholder for transaction/invoice bridge
JOIN Albums a ON t.album_id = a.album_id
GROUP BY c.country
ORDER BY regional_revenue DESC;