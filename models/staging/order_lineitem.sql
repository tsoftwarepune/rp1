{{ config(materialized="table") }}
WITH order_lineitem AS 
(
select
order_fact.*,lineitem_dim.*
from {{ ref('order_Customer') }} as order_fact
inner join {{ ref('lineitem_model') }} as lineitem_dim
on order_fact.o_orderkey = lineitem_dim.l_orderkey                                                    
)
select * from order_lineitem                                              