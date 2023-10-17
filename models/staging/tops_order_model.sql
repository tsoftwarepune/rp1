{{
  config(
    materialized = "table",
    schema = 'tops',
    database = 'gear_d'
  )
}}
select * 
from   pc_dbt_db.stage_schema.stg_orders

