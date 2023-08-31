USE nyc_taxi_ldw;

IF NOT EXISTS ( SELECT * FROM sys.external_file_formats WHERE name='csv_file_format')
    CREATE EXTERNAL FILE FORMAT csv_file_format
    WITH
    (
        FORMAT_TYPE=DELIMITEDTEXT,
        FORMAT_OPTIONS (
            FIELD_TERMINATOR = ','
            , STRING_DELIMITER = '"'
            , FIRST_ROW = 2 -- ONLY AVAILABLE FOR AZURE SYNAPSE ANALYTICS
            , USE_TYPE_DEFAULT = FALSE
            , ENCODING ='UTF8'
            , PARSER_VERSION = '2.0'
        )
    );


IF NOT EXISTS ( SELECT * FROM sys.external_file_formats WHERE name='csv_file_format_pv1')
    CREATE EXTERNAL FILE FORMAT csv_file_format_pv1
    WITH
    (
        FORMAT_TYPE=DELIMITEDTEXT,
        FORMAT_OPTIONS (
            FIELD_TERMINATOR = ','
            , STRING_DELIMITER = '"'
            , FIRST_ROW = 2 -- ONLY AVAILABLE FOR AZURE SYNAPSE ANALYTICS
            , USE_TYPE_DEFAULT = FALSE
            , ENCODING ='UTF8'
            , PARSER_VERSION = '1.0'
        )
    );
