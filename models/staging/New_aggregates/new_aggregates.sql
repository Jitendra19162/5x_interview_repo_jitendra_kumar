with new_aggregates as (
    select 
        NEW_CASES,
        NEW_RECOVERED,
        NEW_DEATHS,
        NEW_ACTIVE_CASES

    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_JITENDRA_KUMAR') }}
)
select * from new_aggregates



