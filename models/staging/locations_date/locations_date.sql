
with locations_date as (
    SELECT
        CONTINENT,
        COUNTRY,
        LOCATION,
        LOCATION_ISO_CODE,
        LATITUDE,
        LONGITUDE,
        cast(DATE as datetime) as Date
    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_JITENDRA_KUMAR') }}

)
SELECT * from locations_date
