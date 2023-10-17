{{
  config(
    materialized = "table",
    schema = 'Tgen'
  )
}}
select * 
from pc_dbt_db.stage_schema.stg_lineitem 
    