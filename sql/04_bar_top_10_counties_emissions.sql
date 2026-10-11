-- Dashboard visualization: Horizontal bar — "Total Emissions by mTon of CO2e for the Top 10 Counties 2023"
-- Lakeview dataset: Total Emissions per County
-- Y-axis (typical): county_state_name
-- X-axis (typical): ghg_emissions_mtons_per_county
-- Catalog / schema: emissions.default

SELECT
  county_state_name,
  state_abbr,
  SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DECIMAL(20, 2))) AS ghg_emissions_mtons_per_county
FROM emissions.default.emissions_data
GROUP BY county_state_name, state_abbr
ORDER BY ghg_emissions_mtons_per_county DESC
LIMIT 10;
