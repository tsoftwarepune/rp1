{{
  config(
    materialized = "table",
    schema = 'tops',
    database = 'gear_d'
  )
}}
WITH order_Customer AS 
(
select
order_fact.*,Customer_dim.c_name 
from {{ ref('tops_order_model') }} as order_fact
inner join {{ ref('tgen_customer_model') }} as Customer_dim
on order_fact.o_custkey = Customer_dim.c_custkey
)
select * from order_Customer

