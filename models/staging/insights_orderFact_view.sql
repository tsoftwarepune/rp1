{{
  config(
    materialized = "view",
    schema = 'tops',
    database = 'gear_d'
  )
}}
WITH OrderFact_view AS 
(
select
O_ORDERKEY,
O_CUSTKEY,
O_SHIPPRIORITY,
O_COMMENT
from {{ ref('insights_orderFact_table') }} 
)
select * from OrderFact_view                                              