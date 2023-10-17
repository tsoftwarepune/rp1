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
from {{ ref('Tops_Order_Model') }} as order_fact
inner join {{ ref('Tgen_Customer_model') }} as Customer_dim
on order_fact.o_custkey = Customer_dim.c_custkey
)
select * from order_Customer

