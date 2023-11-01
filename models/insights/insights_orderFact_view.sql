{{ config(materialized="view") }}
with
    orderfact_view as (
        select o_orderkey, o_custkey, o_shippriority 
        from {{ ref("insights_orderFact_table") }}
    )
select *
from orderfact_view
