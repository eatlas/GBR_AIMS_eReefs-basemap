# GBR_AIMS_eReefs-basemap_Land-and-Basins
This layer contains both Queensland and PNG land areas, along with the river basins along the eastern Queensland coastline. This is an integrated layer that represents both the background land area and the river basins all in one layer. This layer saves having to map the land area, then overlay the river basins. In this way each polygon only needs to be rendered once. The goal of this layer is to optmise the rendering time of the eReefs base map. 

This dataset is made up from the [Geoscience Australia Australia's River Basins 1997 dataset](https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/42343) for the Queensland coastline and the eastern Queensland basins. PNG is copied from Natural Earth Data 10 m countries dataset.

In this we only retain the subset of basins in the north east coast of Queensland. We also reproject the basins into WGS4326 for compatibility with the GeoJSON output.

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
The following describes the processing that was applied to the source data. We want to merge the basins into Australian Coastline dataset, separated by states, but with the basins of the north east coast retained. We also want to bring in the land area of PNG, so that maps of Torres Strait look complete. We need to be careful to consider the islands. The rbasin_polygon doesn't have any attribute to automatically process the states and so are going to perform merging manually.  
1. Load `src-data\orig\GA_River-basins_42343_shp\rbasin_polygon.shp`, `src-data\orig\ne_10m_admin_0_countries\ne_10m_admin_0_countries.shp` and `src-data\orig\GBR_AIMS_eReefs-grid-shapefiles\export\GBR_AIMS_eReefs-grid-shapefiles_GBR4-hydro-v2_boundary.shp` into QGIS.
2. Export rbasin_polygon as `working\02_rbasin_polygon.shp`, setting the CRS to WGS84 to reproject the original basin data.
3. Create a polygon shapefile to represent the clipping bounds of the dataset and save to `extra-data\03_Land-and-Basins_clipping-bounds.shp`. This should be a bounding box that includes the outer most extent visible when plotting a map of the eReefs data, including some of the west coast of Cape York, Torres Strait, PNG including the Gulf of Papua, down to northern NSW and east to the Coral Sea. Use `GBR_AIMS_eReefs-grid-shapefiles_GBR4-hydro-v2_boundary` as a guide, extending the bounds by by 2 degree in each direction to ensure coverage. Enable editing then use the 'Shape Digitising Toolbar / Add Rectangle from Extent' to draw the rectangle' with boundas similar to: West: 140.2, North: -5.9, East: 158.8, South: -30.5.
4. Set the styling of the rbasin_polygon to highlight the NORTH-EAST COAST coast by setting the symbology to Categorized, Value: DNAME and Symbols merging all DNAMEs other than NORTH-EAST COAST into a separate category. This is to help ensure that none of them are accidentally merged with the rest of Queensland.
5. Enabling editing of `02_rbasin_polygon` then select all the basins of Queensland, other than those of the North-east coast. Remember to get the islands in Torres Strait. When merging don't worry about the attribute values of the final merge as these will be wrong regardless of the merge method.
6. Repeat the process for New South Wales and South Australia, noting that we will only be retaining northern NSW and the north each of South Australia.
7. Check the NSW and Queensland boarder closely against a reference layer of the state boundary as there are a few small segments that are easy to missing. As fragments missed in the initial merge can be picked up with subsequent merges. 
8. Clean up the attributes of `02_rbasin_polygon`. With editing enabled, right click Open Attribute Table. Then used the `Delete Field` button to remove:
AREA, PERIMETER, AUS_, AUS_ID, BNUM, RNUM, DNUM, CENTROID_Y, CENTROID_X. Add a an attribute `SOVEREIGNT` to `02_rbasin_polygon` as a text attribute, Length 20. This is so there is a matching attribute for the polygons copied from `ne_10m_admin_0_countries` in later steps.
9. Editing the attributes of the merged QLD, NSW and SA polygons, setting their F_CODE to `state` and setting the BNAME, RNAME, DNAME to the name of the state in all caps. This is a bit of a hack since we are mixing basin and polygon features, but the goal is to create a polygon dataset that only needs one pass to render. Set the `SOVEREIGNT` value of all the polygons in `02_rbasin_polygon` to 'Australia'. This can be done using the Field Calculator.
10. Export `ne_10m_admin_0_countries` to `working\10_ne_10m_admin_0_countries.shp`. Then open its attribution table to remove all the attributes except `SOVEREIGNT`
11. Set the Query Builder of `10_ne_10m_admin_0_countries` to `"SOVEREIGNT"  !=  'Australia'`.
12. Using the `03_Land-and-Basins_clipping-bounds` as a reference select all the non-Australian land features from `ne_10m_admin_0_countries` and copy and paste them into `02_rbasin_polygon`. Note that this will bring in features well outside the clipping bounds. That is fine as they will be clipped later.
13. Edit the attributes of the country features added to `02_rbasin_polygon`. Set the F_CODE to 'country'. 
14. Simply `02_rbasin_polygon` using Processing Toolbox / GRASS / Vector / v.generalize. Use default options except Maximal tolerance value of 0.001. This simplies the basins and coastlines to a scale of approximately 1:1M. Save as a Temporary variable. Rename to `14_Generalized`.
'type':[0,1,2],'cats':'','where':'','method':0,'threshold':0.001,'look_ahead':7,'reduction':50,'slide':0.5,'angle_thresh':3,'degree_thresh':0,'closeness_thresh':0,'betweeness_thresh':0,'alpha':1,'beta':1,'iterations':1,'-t':False,'-l':True,'output':'TEMPORARY_OUTPUT','error':'TEMPORARY_OUTPUT','GRASS_REGION_PARAMETER':None,'GRASS_SNAP_TOLERANCE_PARAMETER':-1,'GRASS_MIN_AREA_PARAMETER':0.0001,'GRASS_OUTPUT_TYPE_PARAMETER':0,'GRASS_VECTOR_DSCO':'','GRASS_VECTOR_LCO':'','GRASS_VECTOR_EXPORT_NOCAT':False.
15. Clip the data to the region of interest. Use Vector / Geoprocessing Tools / Clip
Input layer: 14_Generalized
Overlay Layer: 03_Land-and-Basins_clipping-bounds
Save as temp. Rename to `15_Clip` 
16. Add an attribute `BASIN_ALT` that corresponds to labels that allow distinct mapping of basins with different colours with no neighbouring polygons having the same colour. Basins are labelled 'dbasin_0', 'dbasin_1', 'dbasin_2' or 'dbasin_3', countries, states and islands are coded with 'country', 'state' and 'island'.
17. Download [Natural Resource Management (NRM) Regions (2023)](http://www.environment.gov.au/fed/catalog/search/resource/details.page?uuid=%7B92FEF03C-8655-422C-BD35-5669A9B7ED4D%7D) and load into QGIS.
18. Use Vector / Data Management Tools / Join Attributes by Location.
Base Layer: GBR_AIMS_eReefs-basemap_Land-and-Basins
Join Layer: NRM_regions2023
Fields to add: NRM_REGION
Geometric predicate: intersects
Join type: Take attributes of the feature with largest overlap only
19. Manually change the NRM_REGION of the Queensland, NSW and SA features to be NULL. 
20. Export the data as `public\GBR_AIMS_eReefs-basemap_Land-and-Basins.shp`


# Data Dictionary
- F_CODE: Feature code. Indicates if the polygon is a river basin (dbasin_cent) or an minor island contained within river basin (island_cent). Use this attribute to filter out the islands from the dataset if you have another dataset with islands.
- RNAME: Water region name; all in caps. These include BARRON, BRISBANE, BURDEKIN, BURNETT, CURTIS, FITZROY (QLD), GOLD COAST, MARY, PRINCESS CHARLOTTE BAY, SHOALWATER BAY, WHITSUNDAY
- BNAME: River basin name, typically coresponding to the name of the main river for the subcatchment.
- DNAME: Division name: NORTH-EAST COAST
- BASIN_ALT: country, island, dbasin_0, dbasin_1, dbasin_2
- SOVEREIGNT: Country of the feature (Australia, Papua New Guinea, Solomon Islands)
