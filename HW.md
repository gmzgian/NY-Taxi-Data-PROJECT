# hw3


CREATE OR REPLACE EXTERNAL TABLE `local-bliss-3754.dezoomcamp.external_fhv_tripdata`
OPTIONS (
  format = 'CSV',
  uris = ['gs://dtc_data_lake_local-bliss-3754/Home/fhv_tripdata_2019-*.csv.gz']
);

select * from `local-bliss-3754.dezoomcamp.external_fhv_tripdata` limit 10;

select count (1) from `local-bliss-3754.dezoomcamp.external_fhv_tripdata`;

CREATE or replace TABLE `local-bliss-3754.dezoomcamp.fhv_tripdata`
as select * from `local-bliss-3754.dezoomcamp.external_fhv_tripdata`;

select count(distinct Affiliated_base_number) from `local-bliss-3754.dezoomcamp.fhv_tripdata`;
select count(distinct Affiliated_base_number) from `local-bliss-3754.dezoomcamp.external_fhv_tripdata`;

select count(1) from `local-bliss-3754.dezoomcamp.external_fhv_tripdata`
where PUlocationID is null and DOlocationID is null;

CREATE OR REPLACE TABLE `local-bliss-3754.dezoomcamp.fhv_tripdata_part_clus`
PARTITION BY DATE(pickup_datetime)
CLUSTER BY Affiliated_base_number AS
SELECT * FROM `local-bliss-3754.dezoomcamp.fhv_tripdata`;

select distinct Affiliated_base_number
from `local-bliss-3754.dezoomcamp.fhv_tripdata_part_clus`
where pickup_datetime BETWEEN '2019-03-01' AND '2019-03-31';

