{{
  config(
    materialized = "table"
       )
}}

with source as (
  select * from {{ source('staging_source', 'stg_orders') }}
    ) 
select * 
from source