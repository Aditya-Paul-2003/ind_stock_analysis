-- Question: Which companies show the most stable returns (lowest absolute 365-day % change)?
USE IndStock;

SELECT TOP 10
    s.symbol,
    m.company_name,
    s.perc_change_365d
FROM indstock_summary_cleaned s
JOIN indstock_metadata_cleaned m
    ON s.symbol = m.symbol
WHERE s.symbol <> 'NIFTY 50'
ORDER BY ABS(s.perc_change_365d) ASC;
