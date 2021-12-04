with top_20_locations_with_highest_death_rates as (
    SELECT
        LOCATION,
        round(avg(CASE_FATALITY_RATE),3) as Average_case_fatility_rate
    FROM
    {{ ref('case_wise_rate') }} c join {{ ref('locations_date') }} l
        using(LOCATION_ISO_CODE)
    GROUP BY 1
    ORDER BY 2 DESC LIMIT 20
)
SELECT * FROM top_20_locations_with_highest_death_rates

