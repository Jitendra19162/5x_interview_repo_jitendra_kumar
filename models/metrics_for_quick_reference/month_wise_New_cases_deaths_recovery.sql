with total_deaths_cases_recovered_by_location as (
    SELECT
        month(date) as Month,
        YEAR(DATE) AS YEAR,
        round(avg(TOTAL_DEATHS),2) as Total_death,
        round(avg(TOTAL_CASES),2) as Total_cases,
        round(avg(TOTAL_RECOVERED),2) as Total_recovered

    FROM
    {{ ref('total_aggregates') }} c join {{ ref('locations_date') }} l
        using(LOCATION_ISO_CODE)
    group by 1,2
    order by 2,1

)
SELECT * FROM total_deaths_cases_recovered_by_location

