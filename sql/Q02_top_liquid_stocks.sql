--  Question: Which are the top 10 most liquid stocks (highest average daily trading volume)?
USE IndStock;

SELECT TOP 10
    s.symbol,
    m.company_name,
    s.volume
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY s.volume DESC;
    