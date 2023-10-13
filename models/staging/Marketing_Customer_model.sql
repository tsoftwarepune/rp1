{{
  config(
    materialized = "table",
    schema = 'Marketing'
  )
}}
select * 
from pc_dbt_db.stage_schema.stg_customers 


