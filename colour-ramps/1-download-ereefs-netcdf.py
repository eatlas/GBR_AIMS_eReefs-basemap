# Eric Lawrey - Australian Institute of Marine Science
# This script downloads a sample NetCDF file to visualise the colour ramps. This is the sample NetCDF file used in
# QGIS. Note that the raw NetCDF files are large (500 MB each) and so we download them to a temporary location. This was
# done in my case so that OneDrive doesn't then mirror these files.
# Note that if Python doesn't download this file very well then you can downloaded it manually using a web browser.

# Requires Python 3.5+

# Standard library imports
from pathlib import Path
import os

import sys

sys.path.append('../')
# Local application import
import gisdatautils

# Location to save the downloaded NetCDF file to.
DOWNLOAD_PATH = os.path.join(r"C:\temp", "ereefs")

# Setup data source directory
Path(DOWNLOAD_PATH).mkdir(parents=True, exist_ok=True)

print("Downloading NetCDF data files. This will take a while ...")

GBR4_HYDRO_DAILY_MONTHLY = 'https://thredds.ereefs.aims.gov.au/thredds/s3FileServer/s3://aims-ereefs-public-prod/derived/ncaggregate/ereefs/gbr4_v2/daily-monthly/EREEFS_AIMS-CSIRO_gbr4_v2_hydro_daily-monthly'
# Download a hot month for reviewing high temperature events.
downloadFile = os.path.join(DOWNLOAD_PATH, "daily-monthly-2020-02.nc")
gisdatautils.download(GBR4_HYDRO_DAILY_MONTHLY+'-2020-02.nc', downloadFile)

# Download a cold month for reviewing low temperature events.
downloadFile = os.path.join(DOWNLOAD_PATH, "daily-monthly-2019-08.nc")
gisdatautils.download(GBR4_HYDRO_DAILY_MONTHLY+'-2019-08.nc', downloadFile)

# Download a wet month for reviewing flood events for salinity adjustment.
downloadFile = os.path.join(DOWNLOAD_PATH, "daily-monthly-2019-02.nc")
gisdatautils.download(GBR4_HYDRO_DAILY_MONTHLY+'-2019-02.nc', downloadFile)

GBR4_HYDRO_MONTHLY_MONTHLY = 'https://thredds.ereefs.aims.gov.au/thredds/s3FileServer/s3://aims-ereefs-public-prod/derived/ncaggregate/ereefs/gbr4_v2/monthly-monthly/EREEFS_AIMS-CSIRO_gbr4_v2_hydro_monthly-monthly'
# Download an averaged month to preview current
downloadFile = os.path.join(DOWNLOAD_PATH, "monthly-monthly-2019-08.nc")
gisdatautils.download(GBR4_HYDRO_MONTHLY_MONTHLY+'-2019-08.nc', downloadFile)

# Download a BGC files for previewing its variables. We use monthly data here
# because daily data is not regridded.
GBR4_BGC_MONTHLY_MONTHLY = 'https://thredds.ereefs.aims.gov.au/thredds/s3FileServer/s3://aims-ereefs-public-prod/derived/ncaggregate/ereefs/GBR4_H2p0_B3p1_Cq3b_Dhnd/monthly-monthly/EREEFS_AIMS-CSIRO_GBR4_H2p0_B3p1_Cq3b_Dhnd_bgc_monthly-monthly'
downloadFile = os.path.join(DOWNLOAD_PATH, "GBR4_H2p0_B3p1_Cq3b_Dhnd-monthly-monthly-2019-02.nc")
gisdatautils.download(GBR4_BGC_MONTHLY_MONTHLY+'-2019-02.nc', downloadFile)

# Winter - Some processes have large annual cycles. We use this one to check.
downloadFile = os.path.join(DOWNLOAD_PATH, "GBR4_H2p0_B3p1_Cq3b_Dhnd-monthly-monthly-2018-08.nc")
gisdatautils.download(GBR4_BGC_MONTHLY_MONTHLY+'-2018-08.nc', downloadFile)

# Sediment file
GBR4_BGC_MONTHLY_MONTHLY_SED = 'https://thredds.ereefs.aims.gov.au/thredds/s3FileServer/s3://aims-ereefs-public-prod/derived/ncaggregate/ereefs/GBR4_H2p0_B3p1_Cq3b_Dhnd/monthly-monthly/EREEFS_AIMS-CSIRO_GBR4_H2p0_B3p1_Cq3b_Dhnd_bgc_monthly-monthly-sed'
downloadFile = os.path.join(DOWNLOAD_PATH, "GBR4_H2p0_B3p1_Cq3b_Dhnd-monthly-monthly-sed-2019-03.nc")
gisdatautils.download(GBR4_BGC_MONTHLY_MONTHLY+'-2019-03.nc', downloadFile)


GBR4_HYDRO_ANNUAL_ANNUAL = 'https://thredds.ereefs.aims.gov.au/thredds/s3FileServer/s3://aims-ereefs-public-prod/derived/ncaggregate/ereefs/gbr4_v2/annual-annual/EREEFS_AIMS-CSIRO_gbr4_v2_hydro_annual-annual'
downloadFile = os.path.join(DOWNLOAD_PATH, "gbr4_v2_hydro_annual-annual-2020.nc")
gisdatautils.download(GBR4_HYDRO_ANNUAL_ANNUAL+'-2020.nc', downloadFile)

downloadFile = os.path.join(DOWNLOAD_PATH, "gbr4_v2_hydro_annual-annual-2019.nc")
gisdatautils.download(GBR4_HYDRO_ANNUAL_ANNUAL+'-2019.nc', downloadFile)

downloadFile = os.path.join(DOWNLOAD_PATH, "gbr4_v2_hydro_annual-annual-2016.nc")
gisdatautils.download(GBR4_HYDRO_ANNUAL_ANNUAL+'-2016.nc', downloadFile)

downloadFile = os.path.join(DOWNLOAD_PATH, "gbr4_v2_hydro_annual-annual-2014.nc")
gisdatautils.download(GBR4_HYDRO_ANNUAL_ANNUAL+'-2014.nc', downloadFile)