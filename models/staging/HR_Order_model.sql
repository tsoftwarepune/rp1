{{
  config(
    materialized = "table",
    schema = 'HR'
  )
}}
select * 
from   pc_dbt_db.stage_schema.stg_orders