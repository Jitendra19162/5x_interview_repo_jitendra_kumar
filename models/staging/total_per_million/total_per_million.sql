with total_per_million as (
    select 
        TOTAL_CASES_PER_MILLION,
        TOTAL_DEATHS_PER_MILLION,
        NEW_CASES_PER_MILLION,
        NEW_DEATHS_PER_MILLION


    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_JITENDRA_KUMAR') }}
)
select * from total_per_million




