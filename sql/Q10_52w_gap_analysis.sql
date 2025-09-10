-- Question: Which companies are closest to their 52-week high or low?
USE IndStock;

SELECT 
    s.symbol,
    m.company_name,
    s.last_price,
    s.year_high,
    s.year_low,
    (s.year_high - s.last_price) AS gap_from_high,
    (s.last_price - s.year_low) AS gap_from_low
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY gap_from_high ASC, gap_from_low ASC;
