{{ config(materialized='table') }}

with fhv_data as (
    select * ,
    'Fhv' as service_type
    from {{ ref('stg_fhv_tripdata') }}
),
dim_zones as (
    select * from {{ ref('dim_zones') }}
    where borough != 'Unknown' and zone != 'Unknown'
)
select
dispatching_base_num_fhv,
pickup_datetime_fhv,
dropOff_datetime_fhv,
PUlocationID_fhv,
DOlocationID_fhv,
SR_Flag_fhv,
Affiliated_base_number_fhv,
pickup_zone.borough as pickup_borough,
pickup_zone.zone as pickup_zone, 
dropoff_zone.borough as dropoff_borough,
dropoff_zone.zone as dropoff_zone

from fhv_data
inner join dim_zones as pickup_zone
on fhv_data.PUlocationID_fhv=pickup_zone.locationid and fhv_data.PUlocationID_fhv is not null
inner join dim_zones as dropoff_zone
on fhv_data.DOlocationID_fhv=dropoff_zone.locationid and fhv_data.DOlocationID_fhv is not null
