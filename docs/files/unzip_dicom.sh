#!/bin/bash

if [ -z "$1" ]
then
    echo "No directory supplied as first argument."
    echo "    [usage] unzip_dicom.sh [path to dicoms]"
    exit 1
fi

DICOM_PATH="$1"

# uncompress "*.dicom.zip" files
# find $DICOM_PATH -name "*.dicom.zip" -execdir unzip {} \;

# uncompress "*.dicom.zip" files and delete
find $DICOM_PATH -name "*.dicom.zip" -execdir unzip {} \; -delete

# unnest "*.dcm" files from compression directory
find $DICOM_PATH -name "*.dcm" -execdir mv {} .. \;

# delete any empty directories
find $DICOM_PATH -type d -empty -delete