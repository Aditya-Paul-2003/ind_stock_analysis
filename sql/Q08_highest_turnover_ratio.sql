-- Question: Which companies have the highest turnover ratio (Volume / FFMC)?
USE IndStock;

SELECT TOP 10
    s.symbol,
    m.company_name,
    CAST(s.volume AS FLOAT) / NULLIF(s.ffmc, 0) AS turnover_ratio
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY turnover_ratio DESC;
