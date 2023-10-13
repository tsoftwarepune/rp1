{{
  config(
    materialized = "table",
    schema = 'Tops'
  )
}}
WITH order_Customer AS 
(
select
order_fact.*,Customer_dim.c_name 
from {{ ref('HR_Order_model') }} as order_fact
inner join {{ ref('Marketing_Customer_model') }} as Customer_dim
on order_fact.o_custkey = Customer_dim.c_custkey
)
select * from order_Customer

