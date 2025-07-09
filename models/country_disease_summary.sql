-- models/country_disease_summary.sql

SELECT
  country,
  disease,
  SUM(cases) AS total_cases,
  SUM(deaths) AS total_deaths,
  AVG(population) AS avg_population
FROM {{ ref('clean_tb_burden_country') }}
GROUP BY country, disease
ORDER BY total_deaths DESC