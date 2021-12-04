with total_deaths_cases_by_location as (
    SELECT
        LOCATION,
        round(avg(TOTAL_DEATHS),2) as Total_deaths,
        round(avg(TOTAL_CASES),2) as Total_cases
    FROM
    {{ ref('total_aggregates') }} c join {{ ref('locations_date') }} l
        using(LOCATION_ISO_CODE)
    GROUP BY 1
    ORDER BY 2 DESC
)
SELECT * FROM total_deaths_cases_by_location

