SELECT 
    s.utm_source,
    s.utm_campaign,
    COUNT(DISTINCT s.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
    -- Fixed Conversion Rate with Casting
    ROUND((COUNT(DISTINCT o.order_id)::numeric / NULLIF(COUNT(DISTINCT s.website_session_id), 0)::numeric) * 100, 2) || '%' AS conv_rate,
    -- Revenue and Profit
    SUM(o.price_usd) AS total_revenue,
    SUM(o.price_usd - o.cogs_usd) AS total_margin,
    -- FIXED: Added ::numeric cast here
    ROUND(AVG(o.price_usd)::numeric, 2) AS avg_order_value
FROM website_sessions s
LEFT JOIN orders o 
    ON s.website_session_id = o.website_session_id
GROUP BY 1, 2
ORDER BY total_revenue DESC;