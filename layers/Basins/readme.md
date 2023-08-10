# GBR_AIMS_eReefs-basemap_GA-River-Basins-1997
This is a subset of the original [Geoscience Australia Australia's River Basins 1997 dataset](https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/42343), optimised for the eReef basemap. In this we only retain the subset of basins in the north east coast of Queensland. We also reproject the basins into WGS4326 for compatibility with the GeoJSON output.

# Tools
 - Python to download source data from GA. This can be done manually with a browser.
 - QGIS to manipulate the data.

# Getting source data
Using a Python window run.
```
python 1-download-source-data.py
```
This will create a src-data folder with the downloaded data. If this doesn't work the URLs for manual download are available in the script.

# Preparing the data
The following describes the processing that was applied to the source data.
1. Load `src-data\orig\GA_River-basins_42343_shp\rbasin_polygon.shp` into QGIS.
2. Open the layer properties and set the Query Builder to `"DNAME" = 'NORTH-EAST COAST'`
3. Use Vector / Data management tools / Reproject layer
 Input layer: rbasin_polygon
 Target CRS: EPSG:4326 - WGS 84
4. Export as `public/GBR_AIMS_eReefs-basemap_GA-River-Basins-1997.shp` and as a GeoJSON with 5 digits of accuracy.
5. Use QGIS Layout manager to create a preview map. This is setup in `1-Basins.qgz`

# Data Dictionary
- F_CODE: Feature code. Indicates if the polygon is a river basin (dbasin) or an minor island contained within river basin (island_cent). Use this attribute to filter out the islands from the dataset if you have another dataset with islands.
- RNAME: Water region name; all in caps. These include BARRON, BRISBANE, BURDEKIN, BURNETT, CURTIS, FITZROY (QLD), GOLD COAST, MARY, PRINCESS CHARLOTTE BAY, SHOALWATER BAY, WHITSUNDAY
- RNUM: Region code, from A to M
- BNAME: River basin name, typically coresponding to the name of the main river for the subcatchment.
- BNUM: Basin number
- DNAME: Division name: NORTH-EAST COAST
- AREA: Area of the polygon in square degrees (not so useful)
- PERIMETER: Perimeter of the polygon in degrees (?) (no so useful)
