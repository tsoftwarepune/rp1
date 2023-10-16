{{
  config(
    materialized = "view",
    schema = 'Tops'
  )
}}
WITH OrderFact_view AS 
(
select
O_ORDERKEY,
O_CUSTKEY,
O_CLERK,
O_SHIPPRIORITY,
O_COMMENT,
C_NAME
from {{ ref('OrderFact_Table') }} 
)
select * from OrderFact_view                                              