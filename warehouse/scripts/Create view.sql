-- CREATE VIEW ORDERS

CREATE VIEW nw.orders
AS
SELECT *
FROM
    OPENROWSET
    (
        BULK 'https://deprojectstoragedatalake.dfs.core.windows.net/nw-container2/nw/northwind_orders/',
        FORMAT = 'PARQUET'
    ) AS QUERY1