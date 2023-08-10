# Eric Lawrey - Australian Institute of Marine Science
# This script downloads and unzips all the source datasets used for creating the
# AIMS eReefs basemap dataset. If necessary all the files can be manually downloaded
# and unzipped. 

# Requires Python 3.5+

# Standard library imports
from pathlib import Path
import os

# Hack so we can access the common gisdatautils
# https://stackoverflow.com/questions/714063/importing-modules-from-parent-folder
import sys
import inspect

currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(os.path.dirname(currentdir))
sys.path.insert(0, parentdir) 

# Local application import
import gisdatautils

# Data source directory
SRC = os.path.join("src-data", "download")

# Directory to unzip all the source data
ORIG = os.path.join("src-data", "orig")

       
print("Downloading source data files ...")

# Setup data source directory
Path(SRC).mkdir(parents=True, exist_ok=True)
Path(ORIG).mkdir(parents=True, exist_ok=True)

# ================================================
#  Download the source datasets
# ================================================


# Geoscience Australia Australia's River Basins 1997
# https://ecat.ga.gov.au/geonetwork/srv/eng/catalog.search#/metadata/42343
url = "https://d28rz98at9flks.cloudfront.net/42343/42343_shp.zip"
downloadFile = os.path.join(SRC, "42343_shp.zip")
unzipDir = os.path.join(ORIG, "GA_River-basins_42343_shp")
gisdatautils.download(url, downloadFile)
gisdatautils.unzip(downloadFile, unzipDir)

# Natural Earth Data 1:10m Cultural Vectors - Admin 0 – Countries
# https://www.naturalearthdata.com/downloads/10m-cultural-vectors/
url = "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip"
downloadFile = os.path.join(SRC, "ne_10m_admin_0_countries.zip")
unzipDir = os.path.join(ORIG, "ne_10m_admin_0_countries")
gisdatautils.download(url, downloadFile)
gisdatautils.unzip(downloadFile, unzipDir)


# eReefs GBR1 and GBR4 model boundary and grid in shapefile format (AIMS)
# https://eatlas.org.au/data/uuid/43ff162c-8132-41cd-8547-76a1acf58105
url = "https://nextcloud.eatlas.org.au/s/HnXoAzPBtriY8J7/download/GBR_AIMS_eReefs-grid-shapefiles.zip"
downloadFile = os.path.join(SRC, "GBR_AIMS_eReefs-grid-shapefiles.zip")
unzipDir = os.path.join(ORIG, "GBR_AIMS_eReefs-grid-shapefiles")
gisdatautils.download(url, downloadFile)
gisdatautils.unzip(downloadFile, unzipDir)



# Natural Resource Management (NRM) Regions (2023)
# http://www.environment.gov.au/fed/catalog/search/resource/details.page?uuid=%7B92FEF03C-8655-422C-BD35-5669A9B7ED4D%7D
# This doesn't work as the site needs a Post inorder to work. This data source must be downloaded manually. 
print("Please manually download NRM_regions2023.zip from:")
print("  https://www.environment.gov.au/fed/catalog/search/resource/downloadData.page?uuid=%7B92FEF03C-8655-422C-BD35-5669A9B7ED4D%7D#")
#url = "http://www.environment.gov.au/fed/catalog/search/resource/downloadData.page?uuid=%7B92FEF03C-8655-422C-BD35-5669A9B7ED4D%7D#"
#downloadFile = os.path.join(SRC, "NRM_regions2023.zip")
#unzipDir = os.path.join(ORIG, "NRM_regions2023")
#gisdatautils.download(url, downloadFile)
#gisdatautils.unzip(downloadFile, unzipDir)