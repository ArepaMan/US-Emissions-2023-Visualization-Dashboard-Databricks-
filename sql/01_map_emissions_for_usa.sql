-- Dashboard visualization: Map — "Emissions for USA"
-- Lakeview dataset: Global Emissions Coordinates and Carbon Output Data
-- Catalog / schema (dataset defaults): emissions.default
-- Table: emissions_data

SELECT
  latitude,
  longitude,
  `GHG emissions mtons CO2e` AS emissions
FROM emissions.default.emissions_data;
