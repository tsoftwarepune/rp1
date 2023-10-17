{{
  config(
    materialized = "table",
    schema = 'Tops'
  )
}}
select * 
from   pc_dbt_db.stage_schema.stg_orders

