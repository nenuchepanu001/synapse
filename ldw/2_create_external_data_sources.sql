USE nyc_taxi_ldw;

CREATE EXTERNAL DATA SOURCE nyc_taxi_src
WITH
(
    LOCATION='https://synapse006coursedl.dfs.core.windows.net/nyc-taxi-data'
);