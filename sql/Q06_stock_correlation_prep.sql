-- Question: Prepare stock metrics for correlation (price vs. volume vs. market cap).
USE IndStock;

SELECT 
    s.symbol,
    m.company_name,
    s.last_price,
    s.volume,
    s.ffmc,
    s.perc_change
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50';
