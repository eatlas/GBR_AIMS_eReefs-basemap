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


