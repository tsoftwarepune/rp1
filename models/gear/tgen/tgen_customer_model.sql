{{
  config(
    materialized = "table"
       )
}}

with source as (
  select * from {{ source('staging_source', 'stg_customers') }}
    ) 
select * 
from source



