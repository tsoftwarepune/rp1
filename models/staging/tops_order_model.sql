{{
  config(
    materialized = "table",
    schema = 'tops'
  )
}}
select * 
from   pc_dbt_db.stage_schema.stg_orders

