{{
  config(
    materialized='table'
    unique_key='user_id'
  )
}}

with users_source as (
    select * from {{ source('tutorial', 'users') }}
    )

    select
    id
    , user_id      as user_guid
    , first_name
    , last_name
    , email
    , phone_number
    , created_at   as created_at_utc
    , updated_at   as updated_at_utc
    , address_id

from users_source