{{
  config(
    materialized = "table",
    schema = 'Tops'
  )
}}
WITH OrderFact_Table AS 
(
select
oc.*,ol.*
from {{ ref('Tops_order_Customer') }} as oc
inner join {{ ref('Tops_order_lineitem') }} as ol
on order_fact.o_orderkey = lineitem_dim.l_orderkey                                                    
)
select * from OrderFact_Table                                              