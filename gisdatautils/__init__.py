# Requires Python 3.5+
import urllib.request
from pathlib import Path
import os
import sys
import time
import zipfile


start_time = 0
last_report_time = 0

# This is deprecated
# Derived from https://blog.shichao.io/2012/10/04/progress_speed_indicator_for_urlretrieve_in_python.html
def reporthook(count, block_size, total_size):
    global start_time
    global last_report_time
    current_time = time.time()
    if count == 0:
        start_time = current_time
        last_report_time = current_time
        return
    time_since_last_report = current_time - last_report_time
    # only update once every few seconds
    if time_since_last_report > 2:
        last_report_time = current_time
        duration = current_time - start_time
        progress_size = int(count * block_size)
        speed = int(progress_size / (1024 * duration))
        percent = int(count * block_size * 100 / total_size)
        sys.stdout.write("\r\n%d%%, %d MB, %d KB/s, %d secs    " %
                         (percent, progress_size / (1024 * 1024), speed, duration))
        sys.stdout.flush()



def urlretrieve(url, path, reporthook=None, user_agent=None):
    request = urllib.request.Request(url)
    if user_agent:
        request.add_header("User-agent", user_agent)

    with urllib.request.urlopen(request) as response, open(path, 'wb') as out_file:
        meta = response.info()
        file_size = int(meta.get_all("Content-Length")[0])
        block_size = 8192*32
        read_so_far = 0

        while True:
            buffer = response.read(block_size)
            if not buffer:
                break

            read_so_far += len(buffer)
            out_file.write(buffer)

            if reporthook is not None:
                reporthook(read_so_far // block_size, block_size, file_size)

# Example of usage
def progress(block_number, read_size, total_size):
    print(f"Downloaded block {block_number} ({block_number*read_size}/{total_size} bytes)")




# Utility function that displays progress for the download. Only downloads the
# file if it is not already downloaded
def download(url, path):
    if os.path.exists(path):
        print("Skipping download of " + path + "; it already exists")
    else:
        print("Downloading from " + url)
        
        # This didn't work on the Natural Earth Data website as it doesn't
        # have an acceptable User Agent
        #urllib.request.urlretrieve(url, path, reporthook)
        
        
        urlretrieve(url, path, progress, user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246')
        print("Download complete")


# Unzip the specified file to the unzipPath. This will create the unzipPath
# if necessary. This will skip the unzip if the unzip directory already
# exists.
def unzip(zip_file_path, unzip_path):
    if os.path.exists(unzip_path):
        print("Skipping unzip of " + zip_file_path + " as unzip path exists: " + unzip_path)
    else:
        print("Unzipping " + zip_file_path + " to " + unzip_path)
        Path(unzip_path).mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
            zip_ref.extractall(unzip_path)
