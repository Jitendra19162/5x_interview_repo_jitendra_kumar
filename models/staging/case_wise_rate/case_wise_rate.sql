with case_wise_rate as (
    select 
        LOCATION_ISO_CODE,
        CASE_RECOVERED_RATE,
        CASE_FATALITY_RATE
    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_JITENDRA_KUMAR') }}
)
select * from case_wise_rate



