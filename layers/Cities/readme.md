# GBR_AIMS_eReefs-basemap_Cities_2023
This dataset contains the locations of cities to include on maps at various scales. The source locations for most of the cities is from Natural Earth Data, but we only retain the cities that are relevant for the maps. The only information we get from the Natural Earth Data is the positions of the cities.

The list of cities to include in the dataset was based on the existing eReefs mapping products, along with some example other maps of the region. The goal was to keep the list of cities quite low to reduce map clutter.

# Tools and setup to reproduce
 - Python to download Natural Earth Data Populated places. This can be done manually with a browser.
 - QGIS to join the list of cities with the Natural Earth Data.
 
# Getting source data
Using a Python window run.
```
python 1-download-source-data.py
```
This will create a src-data folder with the downloaded Natural Earth Data. If this doesn't work the URLs for manual download are available in the script.

# Joining the locations to the cities list (Join)
1. The list of cities to include in the dataset along with attributes to know when they should be shown in different zoom level (ereefs_scale) and contexts (scs_scale) was created in Excel based on what locations had already been used in eReefs maps.
1. Load `ne_10m_populated_places_simple.shp` and `extra-data\cities.csv` into QGIS
2. Open the Layer Properties for cities.csv and use the Joins tab to add a Join.
Add Vector Join
Join Layer: ne_10m_populated_places_simple
Join field: name
Target field: name
Joined fields:
- latitude
- longitude
Custom field name prefix: blank

# Adding locations from missing cities
The Natural Earth Data Populated Places doesn't contain all the cities required as it is missing locations for Cooktown, Lockart River, Agnes Water. 
1. Export the joined cities.csv to `public\GBR_AIMS_eReefs-basemap_Cities_2023.csv`
2. Use Google Maps to look up the locations of the missing sites, dropping a pin at the middle of the populated place and using this as the coordinates to manually add to the `GBR_AIMS_eReefs-basemap_Cities_2023.csv` dataset.

# Preview map
1. Use QGIS Layout manager to create a preview map. This is setup in `1-Cities.qgz`, save to `public` folder.

# Data Dictionary
- name: Name of the city, suitable for a map label
- ereefs_scle: Which zoom level of eReefs maps the city should appear on the maps. If blank then this means it doesn't appear in any maps.
- scs_scale: Which cities to show on the Scientific Consensus Statement map. This corresponds to a map of the whole of the GBR.