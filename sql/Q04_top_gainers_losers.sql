-- Question: Which are the top 5 gainers and top 5 losers today based on % change?
USE IndStock;

-- Top 5 Gainers
SELECT TOP 5
    s.symbol,
    m.company_name,
    s.perc_change
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY s.perc_change DESC;

-- Top 5 Losers
SELECT TOP 5
    s.symbol,
    m.company_name,
    s.perc_change
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY s.perc_change ASC;
