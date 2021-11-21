{{
  config(
    materialized='table',
    unique_key='product_id'
  )
}}

with products_source as(
    select * from {{ source('tutorial' 'products') }}
)

select
    id
    , products_source
    , name
    , price
    , quantity

from products_source