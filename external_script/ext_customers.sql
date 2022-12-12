CREATE EXTERNAL TABLE dbtdemo.custmers(
        id STRING,
        first_name STRING ,
        last_name STRING
    )
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' ESCAPED BY '\\'
    STORED AS TEXTFILE
    LOCATION '/mnt/cntdlt/source/bronze/customers/';