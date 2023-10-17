{{
  config(
    materialized = "table",
    schema = 'Tops'
  )
}}
WITH order_lineitem AS 
(
select
order_fact.*,lineitem_dim.*
from {{ ref('Tops_Order_model') }} as order_fact
inner join {{ ref('Tgen_lineitem_model') }} as lineitem_dim
on order_fact.o_orderkey = lineitem_dim.l_orderkey                                                    
)
select * from order_lineitem                                              