{{
  config(
    materialized = "table",
    schema = 'tgen',
    database = 'gear_d'
  )
}}
select * 
from pc_dbt_db.stage_schema.stg_lineitem 
    