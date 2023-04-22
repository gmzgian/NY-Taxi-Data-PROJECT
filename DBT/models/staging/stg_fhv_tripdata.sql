{{ config(materialized='view') }}

select 
dispatching_base_num as dispatching_base_num_fhv,
pickup_datetime as pickup_datetime_fhv,
dropOff_datetime as dropOff_datetime_fhv,
PUlocationID as PUlocationID_fhv,
DOlocationID as DOlocationID_fhv,
SR_Flag as SR_Flag_fhv,
Affiliated_base_number as Affiliated_base_number_fhv

from {{ source('staging','fhv_tripdata') }}

-- dbt build --m <model.sql> --var 'is_test_run: false'
{% if var('is_test_run', default=false) %}

  limit 100

{% endif %}