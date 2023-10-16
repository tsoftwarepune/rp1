{{
  config(
    materialized = "table",
    schema = 'Tops'
  )
}}
WITH OrderFact_Table AS 
(
select
ol.O_ORDERKEY,
ol.O_CUSTKEY,
ol.O_ORDERSTATUS,
ol.O_TOTALPRICE,
ol.O_ORDERDATE,
ol.O_ORDERPRIORITY,
ol.O_CLERK,
ol.O_SHIPPRIORITY,
ol.O_COMMENT,
oc.C_NAME
from {{ ref('Tops_order_Customer') }} as oc
inner join {{ ref('Tops_order_lineitem') }} as ol
on oc.O_ORDERKEY = ol.O_ORDERKEY                                                    
)
select * from OrderFact_Table                                              