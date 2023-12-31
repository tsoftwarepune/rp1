{{
  config(
    materialized = "table" 
  )
}}
WITH OrderFact_Table AS 
(
select
ol.O_ORDERKEY,
ol.O_CUSTKEY,
ol.O_ORDERSTATUS,
ol.O_ORDERDATE,
ol.O_ORDERPRIORITY,
ol.O_SHIPPRIORITY,
oc.C_NAME
from {{ ref('tops_order_customer') }} as oc
inner join {{ ref('tops_order_lineitem') }} as ol
on oc.O_ORDERKEY = ol.O_ORDERKEY                                                    
)
select * from OrderFact_Table                                              