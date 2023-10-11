{{ config(materialized="view") }}
   select * 
    from   pc_dbt_db.stage_schema.stg_orders 

    -- Schema 'PC_DBT_DB.DEV' does not exist or not authorized.
    
