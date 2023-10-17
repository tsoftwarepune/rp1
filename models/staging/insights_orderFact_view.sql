{{
  config(
    materialized = "view",
    schema = 'tops'
  )
}}
WITH OrderFact_view AS 
(
select
O_ORDERKEY,
O_CUSTKEY,
O_SHIPPRIORITY,
O_COMMENT,
C_NAME
from {{ ref('insights_orderFact_table') }} 
)
select * from OrderFact_view                                              