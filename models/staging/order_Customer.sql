{{ config(materialized="view") }}
WITH order_Customer AS 
(
select
order_fact.*,Customer_dim.c_name 
from {{ ref('order_model') }} as order_fact
inner join {{ ref('customer_model') }} as Customer_dim
on order_fact.o_custkey = Customer_dim.c_custkey
)
select * from order_Customer

/*
select
order_fact.*,Customer_dim.c_name 
from {{ ref('order_model') }} as order_fact
inner join {{ ref('customer_model') }} as Customer_dim
on order_fact.o_custkey = Customer_dim.c_custkey
*/


