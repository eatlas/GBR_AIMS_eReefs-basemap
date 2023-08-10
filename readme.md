# GBR_AIMS_eReefs-basemap
Eric Lawrey - Australian Institute of Marine Science - 4 Aug 2023

This repository contains scripts and instructions for recreating the eReef basemap dataset from its original source 
datasets. The metadata record for this dataset is https://doi.org/10.26274/g6sn-s290. The workflow describing the creation of this dataset is available from https://github.com/eatlas/GBR_AIMS_eReefs-basemap.

The data for this collection is contained in the `public` folders of each datasetin the Git repository. The data can be browsed and downloaded from https://nextcloud.eatlas.org.au/apps/sharealias/a/gbr_aims_ereefs-basemap. A direct download of a zip of all the data can be directly downloaded from https://nextcloud.eatlas.org.au/s/RGwTFcLtmPApEcQ/download.

This repository also includes the development of the colour ramps used in the styling of AIMS eReefs visualisations. 
These two elements are bundled together as they form all the background data used in the production of the 
visualisations.

The eReefs basemap dataset is used in all the visualisations of the eReefs models on the 
[AIMS eReefs visualisation poral](https://ereefs.aims.gov.au). 

This basemap data was developed to show the GBR and its 
catchments, along with the Coral Sea. This dataset combines multiple openly available datasets together, simplifying 
them in the process. The visualisations on the AIMS eReefs portal are available as PNG images and SVG maps. 
This simplified basemap was developed so that the SVG files do not become too large and thus can not be edited in 
common vector editing applications. Simplifying the basemap features also helps with the rendering speed of all the 
eReefs visulisations, however this was not the primary goal of this dataset. 

This basemap was optimised for a scale of approximately 1:1M. Not all datasets are optimised for this scale. The rivers 
and coastline were obtained from a 1:5M dataset, while the others were simplified to the desired scale from finer scale 
datasets.

This repository is intended to capture the development process of the dataset so that it can be reproduced and updated
in the future.

This dataset contains a number of components that are outlined here. This includes links to other documents that outline
the development of each component.

# Maps that use this basemap dataset
These plots use this basemap:
- [eReefs Scienctific Consensus WQ plots 2023](https://github.com/open-AIMS/ereefs-scientific-consensus-wq-plots-2023)

# Dataset collection summary and their sources
- [Countries](layers/Countries/readme.md) - Australia plus surrounding countries at 1:10M scale. Use this for overview maps, or as a basic coastline. Allows filtering out of surrounding countries.
- [Land and Basins](layers/Land-and-Basins/readme.md) - This layer contains both Queensland and PNG land areas, along with the river basins along the eastern Queensland coastline. This is an integrated layer that represents both the background land area and the river basins all in one layer. This layer saves having to map the land area, then overlay the river basins. In this way each polygon only needs to be rendered once. The goal of this layer is to optmise the rendering time of the eReefs base map. This dataset is made up from the Geoscience Australia Australia's River Basins 1997 dataset for the Queensland coastline and the eastern Queensland basins. PNG is copied from Natural Earth Data 10 m countries dataset.
- [Cities](layers/Cities/readme.md) - 21 Cities along the Queensland coastline. Selected location based on existing eReefs visualisation maps and other GBR maps. 
- [Basins](layers/Basins/readme.md) - Drainage basins (catchments) adjacent to the Great Barrier Reef along the eastern Queensland coastline. 
- [Rivers](layers/Rivers/readme.md) - Rivers that drain along the Queensland eastern coast. 
- [Reefs](layers/Reefs/readme.md) - Boundaries of reefs in GBR, Torres Strait and Coral Sea. In the Coral Sea it contains the atoll platform boundaries rather than the individual reefs. 
- Clip regions - Polygons for clipping eReefs data to the GBR. Also contains approximate polygons for Coral Sea, Torres Strait, PNG and New Caledonia. This was created principally for setting the region attribute for the Reefs dataset, but was made available as it is useful for clipping eReefs data to the GBR for plotting purposes. Its creation is described in [Reefs](Reefs/readme.md)

# Attribution
When this dataset collection is used largely as a full collection it should attributed something similar to:

- Data: eReefs basemap (AIMS) 2023

This attribution is much shorter than attributing all the source datasets. People can then find the source datasets from this documentation, as well as details of the processing that we did. 

If you are using just one of the layers from this dataset collection and you have space then you should try and provide attribution to the source data. It is still important to attribute this dataset (eReefs basemap) to ensure that the full provenance is retained. For example:
 - Data: eReefs basemap (AIMS) 2023 - Countries - Natural Earth
 - Data: eReefs basemap (AIMS) 2023 - Land - Natural Earth
 - Data: eReefs basemap (AIMS) 2023 - Cities - Natural Earth
 - Data: eReefs basemap (AIMS) 2023 - Basins - Aus River Basins 1997 (C) Copyright Commonwealth of Australia  (Geoscience Australia)
 - Data: eReefs basemap (AIMS) 2023 - Rivers - Geodata Topo 5M (C) Copyright Commonwealth of Australia (Geoscience Australia) 2004
 - Data: eReefs basemap (AIMS) 2023 - Reefs - Torres Strait Features, Coral Sea Features: Australian Institute of Marine Science, GBR Features: Great Barrier Reef Marine Park Authority

## Citation:
Lawrey, E. (2023). eReefs Basemap - GIS layers Reefs, Rivers, Cities, Countries (AIMS) [Data set]. eAtlas. https://doi.org/10.26274/g6sn-s290 

## Source data licensing
- Countries - [Natural Earth Data 1:10m Cultural Vectors - Admin 0 – Countries](https://www.naturalearthdata.com/downloads/10m-cultural-vectors/) dataset. 
 Source License: Public domain
 Source Attribution: Natural Earth
- Cities - 21 Cities along the Queensland coastline. 18 Locations [Natural Earth Data 1:10m Cultural Vectors - Populated places](https://www.naturalearthdata.com/downloads/10m-cultural-vectors/) dataset, others added manually from satellite imagery.
 Source License: Public domain
 Source Attribution: Natural Earth
- Land and Basins: This dataset is made up from the [Geoscience Australia Australia's River Basins 1997 dataset](https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/42343) for the Queensland coastline and the eastern Queensland basins. PNG is copied from Natural Earth Data 10 m countries dataset.
 Source License: Creative Commons Attribution 4.0 International Licence
 Source Attribution: (C) Copyright Commonwealth of Australia  (Geoscience Australia) 1997
 Source Citation: 1997. Australia's River Basins 1997. Geoscience Australia, Canberra. https://pid.geoscience.gov.au/dataset/ga/42343
 
 Natural Earth Data: 
 Source License: Public domain
 Source Attribution: Natural Earth
- Basins - Derived from [Geoscience Australia Australia's River Basins 1997 dataset](https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/42343). It is a subset and reprojection.
 Source License: Creative Commons Attribution 4.0 International Licence
 Source Attribution: (C) Copyright Commonwealth of Australia  (Geoscience Australia) 1997
 Source Citation: 1997. Australia's River Basins 1997. Geoscience Australia, Canberra. https://pid.geoscience.gov.au/dataset/ga/42343
- Rivers - This is a subset of the [Geoscience Australia Geodata Topo 5 M 2004](https://pid.geoscience.gov.au/dataset/ga/42343) basins data. 
 Source License: Creative Commons Attribution 4.0 International Licence
 Source Attribution: (C) Copyright Commonwealth of Australia  (Geoscience Australia) 2004
 Source Citation: 2004. GEODATA TOPO 5M 2004. Geoscience Australia, Canberra. https://pid.geoscience.gov.au/dataset/ga/61114
2004. GEODATA TOPO 5M 2004. Geoscience Australia, Canberra. https://pid.geoscience.gov.au/dataset/ga/61114
- Reefs - Merging of GBR Features (GBRMPA), TS Features (AIMS) and CS Features (AIMS), followed by simplification. 
 - GBR Features and TS Features already combined: Lawrey, E. P., Stewart M. (2016) Complete Great Barrier Reef (GBR) Reef and Island Feature boundaries including Torres Strait (NESP TWQ 3.13, AIMS, TSRA, GBRMPA) [Dataset]. Australian Institute of Marine Science (AIMS), Torres Strait Regional Authority (TSRA), Great Barrier Reef Marine Park Authority [producer]. eAtlas Repository [distributor]. https://eatlas.org.au/data/uuid/d2396b2c-68d4-4f4b-aab0-52f7bc4a81f5
  Source License: Creative Commons Attribution 3.0
  Source Attribution: Australian Institute of Marine Science, Great Barrier Reef Marine Park Authority
 - TS Features: Lawrey, E. (2023). Coral Sea Features - Dataset collection - Reefs, Cays, Atoll reef platforms, Depth contours, Breaking waves (AIMS). [Data set]. eAtlas. https://doi.org/10.26274/pgjp-8462
  Source License: Creative Commons Attribution 4.0 International
  Source Attribution: Australian Institute of Marine Science
- Clip regions - Polygons for clipping eReefs data to the GBR. Also contains approximate polygons for Coral Sea, Torres Strait, PNG and New Caledonia. This was created principally for setting the region attribute for the Reefs dataset, but was made available as it is useful for clipping eReefs data to the GBR for plotting purposes. 
 - Exclusive Economic Zone - Limit - SSL Act 1973 - Proclamation under section 10B (26/07/1994) - AMB2014a (GA)
 - Australian's network of Marine Parks 2022 (DCCEEW)
 - GBR Marine Park Boundary (GBRMPA)
The boundaries were digitised from these map layers incorporated into QGIS.
https://maps.eatlas.org.au/index.html?intro=false&z=7&ll=144.45142,-12.85503&l0=cmr_cmr%3AAU_DCCEEW_amps_2022_line,ea_ea%3AGBR_GBRMPA_GBRMP-boundary,ea_ea%3AAU_GA_SSLA_1973_AMB2014a_eez_1994_limit,ea_ea-be%3AWorld_Bright-Earth-e-Atlas-basemap


## Colour ramps for visualisation
The colour ramps used for visualisations were optimised to for the following goals:
 * Provide high contrast visualisations that allow accurate reading of the final maps.
 * Work for colour blind people
 * Be optimised for key variables and scale to highlight thresholds that have ecological significance.
Full details on the development of the colour ramps are located in the colour_ramps folder and described in 
[COLOUR_RAMPS.md](colour-ramps/README.md).

