-- Dashboard visualization: Scatter — "Emission vs Population"
-- Lakeview dataset: Emissions per Person
-- X-axis (typical): emissions_per_person_mtons
-- Y-axis (typical): population
-- Catalog / schema: emissions.default

WITH emm_per_person AS (
  SELECT
    county_state_name,
    state_abbr,
    CAST(population AS INT) AS population,
    CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DECIMAL(20, 2)) AS ghg_emissions_mtons,
    ROUND(
      CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DECIMAL(20, 2)) / population,
      2
    ) AS emissions_per_person_mtons
  FROM emissions.default.emissions_data
  WHERE population > 0
  ORDER BY emissions_per_person_mtons DESC
)

SELECT
  county_state_name,
  population,
  emissions_per_person_mtons
FROM emm_per_person;
