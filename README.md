# US Emissions 2023 — Databricks SQL & Lakeview Dashboard

EPA **2023** county-level emissions panel explored in **Databricks SQL**, visualized in a published **Lakeview** dashboard.

## Live dashboard

[Open published dashboard](https://dbc-48a6cb8e-c1bd.cloud.databricks.com/dashboardsv3/01f1c5924f571f998d4d6fa6831cc305/published?o=7474650545176309) (Databricks login may be required).

## What’s on the board

| Tile | Purpose |
|------|---------|
| **Emissions for USA** | Map / geographic view of the county dataset |
| **Emission vs Population** | Scatter: emissions per person (mTon) vs county population |
| **Top 10 states** | Donut — top 10 states ≈ **51%** of US emissions in 2023 |
| **Top 10 counties** | Bar chart — total CO₂e (mTon); Maricopa, Harris, Cook lead |

## Screenshots

Static PNG exports (Lakeview **Download as PNG** per tile) live in [`docs/screenshots/`](docs/screenshots/).

## Data

Source file used in the workspace: `Emissions_Data_2023.csv` (~3.1k US counties).  
Subtitle on the dashboard: data collected by the **EPA** in 2023.

Do not commit large raw files here unless you have redistribution rights; load from your Databricks volume or course materials locally.

## SQL

Lakeview dataset queries (one file per dashboard tile):

| File | Visualization | Lakeview dataset name |
|------|----------------|------------------------|
| [`sql/01_map_emissions_for_usa.sql`](sql/01_map_emissions_for_usa.sql) | Map — **Emissions for USA** | Global Emissions Coordinates and Carbon Output Data |
| [`sql/02_scatter_emission_vs_population.sql`](sql/02_scatter_emission_vs_population.sql) | Scatter — **Emission vs Population** | Emissions per Person |
| [`sql/03_donut_top_10_states_emissions.sql`](sql/03_donut_top_10_states_emissions.sql) | Donut — **Top 10 states (~51% of US emissions)** | Total Emissions per State |
| [`sql/04_bar_top_10_counties_emissions.sql`](sql/04_bar_top_10_counties_emissions.sql) | Bar — **Top 10 counties by mTon CO₂e** | Total Emissions per County |

## Portfolio

Featured on my personal site as **US County Emissions Dashboard** (`/projects/us-county-emissions-dashboard`).

## Stack

- Databricks SQL
- Lakeview (AI/BI dashboards)
- Delta / tables or file ingest per your workspace setup
