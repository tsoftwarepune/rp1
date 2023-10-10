{{ config(materialized="view") }}
select * 
from pc_dbt_db.DEV_SCHEMA.stg_customers 
    