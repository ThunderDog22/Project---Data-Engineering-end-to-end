CREATE DATABASE SCOPED CREDENTIAL cred_thunder
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_container2
with (
    LOCATION = 'https://deprojectstoragedatalake.dfs.core.windows.net/nw-container2',
    CREDENTIAL = cred_thunder
)

CREATE EXTERNAL DATA SOURCE source_container3
with (
    LOCATION = 'https://deprojectstoragedatalake.dfs.core.windows.net/nw-container3',
    CREDENTIAL = cred_thunder
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)



--- CREATE EXTERNAL TABLE 

CREATE EXTERNAL TABLE nw.extorders
WITH
(
    LOCATION = 'extorders',
    DATA_SOURCE = source_container3,
    FILE_FORMAT = format_parquet
) AS
SELECT * from nw.orders









