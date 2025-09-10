-- Question: How diversified is the NIFTY 50 across industries? (Count of companies per industry)
USE IndStock;

SELECT 
    m.industry,
    COUNT(DISTINCT s.symbol) AS company_count
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
GROUP BY m.industry
ORDER BY company_count DESC;
