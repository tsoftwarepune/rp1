{{ config(materialized="table", schema="tops", database="gear_d") }}
with
    order_customer as (
        select order_fact.*, customer_dim.c_name
        from {{ ref("tgen_order_model") }} as order_fact
        inner join
            {{ ref("tgen_customer_model") }} as customer_dim
            on order_fact.o_custkey = customer_dim.c_custkey
    )
select *
from order_customer
