
SELECT
  INITCAP(country) AS country,
  CAST(year AS INT) AS year,
  INITCAP(disease) AS disease,
  CAST(cases AS INTEGER) AS cases,
  CAST(deaths AS INTEGER) AS deaths,
  CAST(population AS INTEGER) AS population
FROM {{ ref('tb_burden_country_ab1') }} -- or use actual Airbyte table name
WHERE country IS NOT NULL AND disease IS NOT NULL