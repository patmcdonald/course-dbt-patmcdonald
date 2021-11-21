{{
  config(
    materialized='table',
    unique_key='event_id')
}}

with events_source as (
    select * from {{  source('tutorial', 'events') }}
)

select
    id
    , event_id
    , session_id
    , user_id
    , event_type
    , page_url
    , created_at    as created_at_utc

from events_source