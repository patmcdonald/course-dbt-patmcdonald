{{
  config(
    materialized='table',
    unique_key='order_id'
  )
}}

with orders_source as(
    select * from {{ source('tutorial', 'orders') }}
)

    select
    id
    , order_id
    , promo_id
    , user_id
    , address_id
    , created_at                    as created_at_utc
    , order_cost
    , shipping_cost
    , order_total
    , tracking_id
    , shipping_service
    , estimated_delivery_at         as estimated_delivery_at_utc
    , delivered_at                  as delivered_at_utc
    , status            

    from orders_source