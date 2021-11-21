{{
  config(
    materialized='table',
    unique_key='address_id'
  )
}}


with addresses_source as (
    select * from {{ source('tutorial', 'addresses') }}
)

select
    id
    , addresses_id
    , address
    , zipcode
    , state
    , country

from addresses_source