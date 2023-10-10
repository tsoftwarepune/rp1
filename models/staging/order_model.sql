{{ config(materialized="view") }}
   select * 
    from   pc_dbt_db.DEV_SCHEMA.stg_orders 

    -- Schema 'PC_DBT_DB.DEV' does not exist or not authorized.
    
