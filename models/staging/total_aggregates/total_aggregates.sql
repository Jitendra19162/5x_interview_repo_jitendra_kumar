with total_aggregates as (
    select 
        TOTAL_CASES,
        TOTAL_RECOVERED,
        TOTAL_DEATHS,
        TOTAL_ACTIVE_CASES,
        LOCATION_ISO_CODE

    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_JITENDRA_KUMAR') }}
)
select * from total_aggregates



