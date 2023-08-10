# GBR_AIMS_eReefs-basemap_GA-topo5m-drainage
This dataset contains the rivers that flow into the GBR from the basins on the east coast of Queensland. This dataset is intended to be suitable for creating maps that show the whole of the Queensland. It corresponds to rivers at a scale of 1:5M and so is pretty low in detail. There is no indication of which sements of the rivers is the most significant flow wise.

This dataset is derived from the [Rivers and coastline: Geoscience Australia Geodata Topo 5 M 2004](https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/61114) dataset. We simply remove all rivers that don't flow into the north east coastline.

# Tools to reproduce this dataset
- QGIS

# Getting source data
Using a Python window run.
```
python 1-download-source-data.py
```
This will create a src-data folder with the downloaded Natural Earth Data. If this doesn't work the URLs for manual download are available in the script.


# Data preparation
1. Load the `Rivers\orig\61114_shp\geodata_topo5m_2004\data\drainage\aus5dgd_l.shp` into QGIS. Also load `\Basins\public\GBR_AIMS_eReefs-basemap_GA-River-Basins-1997.shp`.
2. The goal is to remove all rivers that are not covered by the river basins. Use Vector / Select by Location.
Select features from: aus5dgd_l
Where the features: intersect
By comparing to the features from: GBR_AIMS_eReefs-basemap_GA-River-Basins-1997
3. Export the selection. Change the CRS to : EPSG:4326 - WSG:84. Save as `public\GBR_AIMS_eReefs-basemap_GA-topo5m-drainage.shp`
4. Export `GBR_AIMS_eReefs-basemap_GA-topo5m-drainage.shp` as a GeoJSON with digits of accuracy of 5.
