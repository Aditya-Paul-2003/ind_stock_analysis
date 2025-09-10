-- Question: Which Top 10 industries dominates the NIFTY 50 in terms of total free-float market cap?

USE IndStock;

SELECT Top 10
    m.industry,
    SUM(s.ffmc) AS total_ffmc_crore
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
GROUP BY m.industry
ORDER BY total_ffmc_crore DESC;
