SELECT
   YEAR(STR_TO_DATE(InvoiceDate, '%m/%d/%Y')) AS order_year,
    MONTH(STR_TO_DATE(InvoiceDate, '%m/%d/%Y')) AS order_month,
    SUM(UnitPrice * Quantity) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM
    data
# WHERE YEAR(STR_TO_DATE(InvoiceDate, '%m/%d/%Y')) = 2011 (this code will not work here as in the dataset there is only one year given so we cannot specify the year)
GROUP BY
    YEAR(STR_TO_DATE(InvoiceDate, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(InvoiceDate, '%m/%d/%Y'))
ORDER BY
    order_year ASC	,
    order_month ASC;
