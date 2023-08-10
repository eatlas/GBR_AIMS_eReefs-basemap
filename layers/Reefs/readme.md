# GBR-TS-CS_AIMS_Reef-boundaries-1M.md
This documents the creation of the simplified version of the reef boundaries dataset. This dataset is suitable for generating low detail maps of the Queensland and Coral Sea waters. The reef boundary has been simplified to a detail level of 1:1M and the file size is approximately 10x smaller than the original reef boundary dataset.

Simplifying the GBR reef matrix is challenging because it is made up from thousands of small features. Standard 
simplification uses two techniques: reducing the number of vertices and removing small polygons. Unfortunately 
some areas in the GBR are made up from hundreds of small polygons. Applying conventional simplification to these 
results in a poor result, with all the polygons being removed, leaving blank areas, or lots of crude triangular 
polygons. 

To overcome some of these limitations we use an approach that maintains the visual appeal of the reefs, even with high 
levels of simplification. In this approach we rasterise the reef matrix (turn it into a pixel based image), then apply 
a pixel growth (spatial maximum) operation to join neighbouring reefs that are very close, then a pixel shrink (spatial 
minimum) operation to bring them back to their original shape, except where  two reefs were merged. This process results 
in small neighbouring polygons to merge together. We then convert the rastered result back to polygons then apply 
conventional polygon simplication to the result. This process allows high compression of the original polygon features, 
but results in a polygon map that no longer has a one-to-one relationship between reefs to polygons as some reefs become 
merged in the simplification process. This dataset is therefore only suitable for creating a visual map, not for 
analysis requiring boundaries of individual reefs.

# Source datasets
This dataset is based on the following datasets:
- Complete Great Barrier Reef (GBR) Island and Reef Feature boundaries including Torres Strait Version 1b (NESP TWQ 3.13, AIMS, TSRA, GBRMPA) https://eatlas.org.au/data/uuid/d2396b2c-68d4-4f4b-aab0-52f7bc4a81f5

# Extra datasets
This corresponds to data that could not be downloaded publicly.
- Coral Sea Reef Platforms 100 m depth (AIMS) - The version used here is an incomplete unpublished version of this dataset as it doesn't contain all the final attributes for the features. The boundaries of these features is complete, and this is all that is used in this dataset. The final dataset will be linked from https://eatlas.org.au/data/uuid/5eade21a-5f08-46c8-a612-5de83d744109.
- GBR_AIMS_eReefs-basemap_Clip-regions - This is a polygon of the regions (TS, GBR, CS, PNG, New Caledonia) that is used to set the regional attribute of the Reef-boundaries dataset. The aim of this attribute is to facilitate filtering out reefs for regions that should not be shown in generated maps. For example when creating a map of the GBR we might choose to only display reefs in the GBR and Torres Strait and not the Coral Sea. Note this dataset was manually digitised from the Australian EEZ, the GBR Marine Park outer boundary. These regional boundarys are only approximate. They are however sufficiently accurate to clip the boundary of the eReefs data to the GBR Marine Park. Note: That is inner edge of the GBR region is buffered inland and so this dataset will only clip the outer edge of the GBR. Note: We copy this dataset also to the public folder as a useful reference dataset for clipping eReefs data.

# Attribution removal
In this step we remove all the unnecessary attributes. This makes merging the datasets easier. The only information that we retain is the country. (Note: Turns out we don't use the 'COUNTRY' attribute later as it gets removed when we rasterise the data)

# Merging GBR and Coral Sea (Merge)
In this step we merge the GBR, TS and Coral Sea datasets.

1. Load `TS_AIMS_NESP_Torres_Strait_Features_V1b_with_GBR_Features` and `CS_AIMS_Coral-Sea-Features_Reef-platform-100m_MSL_STAGE11` into QGIS.
2. Use the Query Builder to only keep the reef features in `TS_AIMS_NESP_Torres_Strait_Features_V1b_with_GBR_Features` using `"FEAT_NAME" = 'Reef'`.
3. Using the Refactor Fields tool on `TS_AIMS_NESP_Torres_Strait_Features_V1b_with_GBR_Features`, remove all fields except `Country`. Convert it to `COUNTRY`. Save as a temporary result. Rename layer to `Refactored_TS_GBR`.
4. Using the Refactor Fields tool on `CS_AIMS_Coral-Sea-Features_Reef-platform-100m_MSL_STAGE11`, remove all fields except `COUNTRY`. Save as a temporary result. Rename layer to `Refactored_CS`.
5. Use the Merge vector layers tool to combine both `Refactored_TS_GBR` and `Refactored_CS`. Save as a temporary result. Rename layer to `Merged_TS_GBR_CS`.

# Rasterising the data (Rast)
The goal of this stage is to create a binary raster that we can use image blending techniques to simply the final map data.
1. Use Rasterize (Vector to Raster) to render the `Merged_TS_GBR_CS` to a high resolution bitmap.
Fixed value to burn: 255
Output data type: Byte
Output raster size units: Georeferenced units
Width: 0.0003
Heigh: 0.0003

```
gdal_rasterize -l layer_name -burn 255.0 -tr 0.0003 0.0003 -a_nodata 0.0 -ot Byte -of GTiff path_to_data_file C:/Users/elawrey/AppData/Local/Temp/processing_dzSmhK/aa71a3b2b50b4e1e92e7bb211fda20a7/OUTPUT.tif
```
2. Export the raster as a GeoTiff with a WorldFile. Right-click on the layer (raster) -> export -> save as. Activate Create options. Click on "+". In the column "Name" add "tfw" and in the column "Value" add "yes". Add "COMPRESS" value "LZW". Save as `working\Rast-02-Reef-boundary-raster.tif`

# Smoothing the rasterisation (Smooth)
The smoothing of the rasterisation can't be done in QGIS unfortunately (or I don't know how), so we use Photoshop to perform the smoothing of the rasterisation. This blends neighouring small reefs into larger features. We exported with a WorldFile because Photoshop just treats the GeoTiff images as Tiff images and doesn't retain the geospatial boundaries. The fundamental operations we are doing could be done using various methods. 

1. Load `working\Rast-02-Reef-boundary-raster.tif` into Photoshop
2. Apply a 3.0 pixel Gaussian Blur to the image.
3. Apply a Threshold of 128 to the image. 
4. Save as `working\Smooth-04-Reef-boundary-raster-3px-gauss.tif`, with LZW compression.
5. Make a copy of the `Rast-02-Reef-boundary-raster.tfw` and save as `Smooth-04-Reef-boundary-raster-3px-gauss.tfw`. This will allow QGIS to load the GeoTiff created by Photoshop.

# Turning back into a vector (Vec)
This step we convert the raster back into a vector and smooth and simplify it.
1. Load `Smooth-04-Reef-boundary-raster-3px-gauss.tif` into QGIS.
2. Use Raster / Conversion / Polygonize. Save as a temporary result. Rename layer to `Vec-01`.
3. Set a Query Builder to remove the area between the reefs. `"DN" = 255`
4. Smooth the polygons with the Vector geometry / Smooth tool.
Iterations: 1
Offset: 0.5
Maximum node angle to smooth
Save as a temporary result. Rename layer to `Vec-04_Smooth`.
5. Use Vector / Geometry tools / Simplify
Simplification method: Distance
Tolerance: 0.001
Save as a temporary result. Rename layer to `Vec-05_Simplify`.

# Assigning reefs to regions (Regions)
We want to assign reefs to various regions, including Torres Strait, GBRMP, Coral Sea, PNG and New Caledonia. For this we create a simple dataset that can be used for a spatial join. For simplicity we draw this boundary dataset from the GBRMPA Marine Park Boundary, the Australian Exclusive Economic Zone Limit 2014 and the Australian's network of Marine Parks 2022 (DCCEEW). We simplify these datasets. 

Note that the boundaries for the regions are only approximate and are not representative of official boundaries and are only accurate to approximately 1:50k. In particular the PNG and New Caledonia borders only provide coverage of where we have mapped the reefs. The boundary of the GBR was brought inland to make sure inshore reefs that are not actually part of the GBRMP are included in the region attribute.

1. Split the reef features by the regions. This ensures that when we merge the attribute with the region that there is a one to one relationship. Vector / Geoprocessing / Intersection
Input `Vect-05_Simplify`
Overlay: `GBR_AIMS_eReefs-basemap_Clip-regions`
Save as a temporary result. Rename layer to `Regions-01_Intersect`.
2. Delete the 'DN' attribute and the 'fid' attributes. We remove the 'fid' attribute as it contains some duplicates as a result of the intersection operation.
Use 'Open the Attribute Table' of `Regions-01_Intersect`. Enable editing, then use the delete column action. Save the changes and turn off editing.
3. Export `Regions-01_Intersect` as `public\GBR-TS-CS_AIMS_Reef-boundaries-1M_2023.shp`, setting the CRS as EPSG:4326. As export as a GeoJSON. Change the Layer Options COORDINATE_PRECISION: 5