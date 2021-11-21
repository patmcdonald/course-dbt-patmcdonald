{{
  config(
    materialized='table',
    unique_key='order_id'
  )
}}

with orders_items_source as(
    select * from {{ source('tutorial', 'order_items') }}
)

select
    id
    , order_id
    , product_id
    , quantity

from orders_items_source