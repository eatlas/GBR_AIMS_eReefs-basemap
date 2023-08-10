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


# Complete Great Barrier Reef (GBR) Island and Reef Feature boundaries
# including Torres Strait Version 1b (NESP TWQ 3.13, AIMS, TSRA, GBRMPA)
# https://eatlas.org.au/data/uuid/d2396b2c-68d4-4f4b-aab0-52f7bc4a81f5
url = "https://nextcloud.eatlas.org.au/s/xQ8neGxxCbgWGSd/download/TS_AIMS_NESP_Torres_Strait_Features_V1b_with_GBR_Features.zip"
downloadFile = os.path.join(SRC, "TS_AIMS_NESP_Torres_Strait_Features_V1b_with_GBR_Features.zip")
unzipDir = os.path.join(ORIG, "AIMS_GBR-TS_Features_V1b")
gisdatautils.download(url, downloadFile)
gisdatautils.unzip(downloadFile, unzipDir)


