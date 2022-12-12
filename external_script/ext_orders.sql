CREATE EXTERNAL TABLE dbtdemo.orders(
        id STRING,
        user_id STRING ,
        order_date STRING,
        status STRING,
        --id,user_id,order_date,status
    )
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' ESCAPED BY '\\'
    STORED AS TEXTFILE
    LOCATION '/mnt/cntdlt/source/bronze/orders/';