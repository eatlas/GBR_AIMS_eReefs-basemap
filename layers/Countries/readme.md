# GBR_AIMS_eReefs-basemap_NE-countries-10m
This dataset corresponds to countries features around Australia that is suitable for creating an overview map. It includes PNG and parts of Indonesia. The goal is that it is suitable for creating maps of the GBR and Coral Sea. It is a subset of the features from the [Natural Earth Data 1:10m Cultural Vectors - Admin 0 – Countries](https://www.naturalearthdata.com/downloads/10m-cultural-vectors/).

# Tools
 - Python to download source data from GA. This can be done manually with a browser.
 - QGIS to manipulate the data.

# Getting source data
Using a Python window run.
```
python 1-download-source-data.py
```
This will create a src-data folder with the downloaded Natural Earth Data. If this doesn't work the URLs for manual download are available in the script.

# Preparing the data
1. Load `src-data\orig\ne_10m_admin_0_countries\ne_10m_admin_0_countries.shp` into QGIS.
2. Load the clipping boundary from the Land dataset `..\Land\extra-data\clipping-boundary.shp`.
3. Clip the `ne_10m_admin_0_countries` layer to the extent of the clip layer (Vector -> Geoprocessing Tools -> Clip). Save the results to a new layer: `public\GBR_AIMS_eReefs-basemap_NE-countries-10m.shp`
4. Export the same layer as GeoJSON, saving with only 5 digits of precision.

# Data Dictionary
This includes all the attributes from the source Natural Earth Data Admin 0 - Countries dataset. There is only limited documentation about what most of the attributes mean. See https://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-0-countries/ for more information. The following are attributes that are likely to be most useful:
- SOVEREIGNT: Sovereign Territory name. Which country the polygon belongs to. For example Norfolk Island 
