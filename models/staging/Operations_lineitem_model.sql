{{
  config(
    materialized = "table",
    schema = 'Operations'
  )
}}
select * 
from pc_dbt_db.stage_schema.stg_lineitem 
    