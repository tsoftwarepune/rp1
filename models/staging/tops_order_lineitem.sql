{{
  config(
    materialized = "table",
    schema = 'tops',
    database = 'gear_d'
  )
}}
WITH order_lineitem AS 
(
select
order_fact.*,lineitem_dim.*
from {{ ref('tops_order_model') }} as order_fact
inner join {{ ref('tgen_lineitem_model') }} as lineitem_dim
on order_fact.o_orderkey = lineitem_dim.l_orderkey                                                    
)
select * from order_lineitem                                              