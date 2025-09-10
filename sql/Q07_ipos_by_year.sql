-- Question: How many companies were listed each year?
USE IndStock;

SELECT 
    YEAR(m.listing_date) AS listing_year,
    COUNT(*) AS company_count
FROM indstock_metadata_cleaned m
WHERE m.listing_date IS NOT NULL
GROUP BY YEAR(m.listing_date)
ORDER BY listing_year;
