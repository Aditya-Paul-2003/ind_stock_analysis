-- Question: Which industries have the highest average daily % change (volatility)?
USE IndStock;

SELECT 
    m.industry,
    AVG(ABS(s.perc_change)) AS avg_volatility
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
GROUP BY m.industry
ORDER BY avg_volatility DESC;
