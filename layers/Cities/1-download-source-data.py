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


# Natural Earth Data 1:10m Cultural Vectors - Populated Places (simple)
# https://www.naturalearthdata.com/downloads/10m-cultural-vectors/
url = "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places_simple.zip"
downloadFile = os.path.join(SRC, "ne_10m_populated_places_simple.zip")
unzipDir = os.path.join(ORIG, "ne_10m_populated_places_simple")
gisdatautils.download(url, downloadFile)
gisdatautils.unzip(downloadFile, unzipDir)


