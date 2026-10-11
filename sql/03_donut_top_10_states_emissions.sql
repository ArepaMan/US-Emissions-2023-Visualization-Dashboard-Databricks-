-- Dashboard visualization: Donut — "Top 10 States account for ~51% of all the emissions in the US in 2023"
-- Lakeview dataset: Total Emissions per State
-- Chart: state share of total GHG (mTon CO2e); top 10 states by SUM
-- Catalog / schema: emissions.default

SELECT
  state_abbr,
  SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DECIMAL(20, 2))) AS tot_ghg_emissions_mtons
FROM emissions.default.emissions_data
WHERE population > 0
GROUP BY state_abbr
ORDER BY tot_ghg_emissions_mtons DESC
LIMIT 10;
