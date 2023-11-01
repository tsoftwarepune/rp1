
{{
  config(
    materialized = "table"
       )
}}

with source as (
  select * from {{ source('staging_source', 'stg_lineitem') }}
    ) 
select * 
from source
 