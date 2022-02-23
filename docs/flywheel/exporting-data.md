# Exporting Data

There are two common formats of exported data from Flywheel. The first format is to export the data in source DICOM files. The second method is to export the data after BID curation as NIfTI files.

There are pros and cons each file formats, but ultimately, the project demands will dictate the preferred data format. Below describes methods to obtain data from Flywheel in either foramts.

## DICOM

Data from a Siemens 3T Prisma scanner, by default, is uploaded to Flywheel in [DICOM](https://www.dicomstandard.org/about-home) format. DICOM is a standard file format for medical images and its related information.

When data is exported in DICOM format, the data structure (i.e., folders and subfolders) will be based on Flywheel's data heirarchy.

```text
Group > Project > Subject > Session > Acquisition > File
```

It is possible to customize the data structure the data is exported into with [export templates](https://docs.flywheel.io/hc/en-us/articles/4407329397651-Export-templates), but doing so will require using Flywheel's Command-Line Interface (CLI).

### Exporting Data via the Web User Interface (UI)

Exporting data via Flywheel's Web UI can be performed at the multiple levels.

1. [Project](https://docs.flywheel.io/hc/en-us/articles/360008629794-Downloading-an-entire-project-from-the-Web-UI)
2. [Sessions or multiple acquisitions](https://docs.flywheel.io/hc/en-us/articles/360008622994-Downloading-sessions-or-acquisitions-from-the-Web-UI)
3. [Single file](https://docs.flywheel.io/hc/en-us/articles/360009256973-Downloading-a-file-from-the-Web-UI)

Please follow the links to Flywheel's documentation for relevant information and instructions on how to use the web UI for exporting data.

### Exporting Data with Flywheel Command-Line Interface (CLI)

The CLI is an additional Flywheel program that can be used from the computer's Command Prompt (Windows) or Terminal (Mac). To install the Flywheel CLI, go to [Flywheel's CLI Installation](https://docs.flywheel.io/hc/en-us/articles/360008162214) page.

Once the CLI has been installed successfully, you can download the data in DICOM format from the Command Prompt or Terminal.

The main command will take the form:

```bash
fw download [optional flags] path/to/data/on/flywheel
```

Documentation for how to export data as DICOM with Flywheel's CLI can be found [here](https://docs.flywheel.io/hc/en-us/articles/360016090074).

#### Common Commands

!!! attention
    The `path/to/data/on/flywheel` will be user specific. Please change the paths in the example commands to match with your desired data.

Exporting *only* DICOM files from a project:

```bash
fw download group/project --include dicom
```

Exporting *only* DICOM files of one session for a subject:

```bash
fw download group/project/subject/session --include dicom
```

Other file types can be specified by besides DICOM files. Flywheel provides a list of reconized file types [here](https://docs.flywheel.io/hc/en-us/articles/360037903734#UUID-3e0123a5-6fc9-5e95-38b5-c21529fdb33a).

### Unzipping DICOM Files

Data exported in DICOM format are compressed as zip files for ease when transferring multiple large files. However, it might be easier for some software to load the individual uncompressed DICOM files.

The decompression process is possible from the command line with a few commands.

First, navigate to the project directory.

```bash
cd /path/to/project/directory
```

Next, use the first command to find all `*.dicom.zip` files in the current and sub directories and unzip the files. If desired, the second line performs the same unzipping process but also deletes the zip file.

```bash
find . -name "*.dicom.zip" -execdir unzip {} \; # unzips only
find . -name "*.dicom.zip" -execdir unzip {} \; -delete # unzips and deletes
```

It is fine to stop at this step if you only want to unzip the compressed files.

However, if it is desired to unnest the uncompressed DICOM files from their compressed directory, execute the following command to move the DICOM files up one directory.

```bash
find . -name "*.dcm" -execdir mv {} .. \;
```

Finally, perform clean up by deleting any empty directories created by the uncompressing process.

```bash
find . -type d -empty -delete
```

These commands can be found compiled in the provided bash script, <a href="../../files/unzip_dicom.sh" download>unzip_dicom.sh</a>. Note the script deletes the compressed DICOM files as the default. The bash script can be called from the command line as such.

```bash
$ path/to/unzip_dicom.sh /path/to/compressed/dicom/directories
```

## BIDS

It might be useful for some projects to be exported in [BIDS](https://bids-specification.readthedocs.io/en/stable/) compliant format. This is possible so long as the desired files have been processed with the [BIDS Curation](./bids-curation.md) Analysis Gear.

When data is exported in BIDS format, the data structure will be based on BIDS Specification.

```text
Project > Subject > Session
        > Modality (anat, fmap, func, dwi)
        > File (*.json, *.nii.gz)
```

Currently, the only method of exporting data from Flywheel in BIDS format is with the Flywheel CLI.

### Exporting Data in BIDS Format with Flywheel CLI

If the CLI has been installed successfully, you can download your data in BIDS format from the Command Prompt or Terminal.

The main command will take the form:

```bash
fw export bids [optional flags] --project "project_name" /path/to/destination/folder
```

The [Flywheel's BIDS Export Documentation](https://docs.flywheel.io/hc/en-us/articles/1500006477001) explains the exporting process additional information and options available through the CLI.

#### Common Commands

Export an entire project:

```bash
fw export bids --project "project_label" /path/to/project_folder
```

Exporting by session (`\` allows for multiline commands):

```bash
fw export bids \
    --project "project_label" \
    --session "ses-01" \
    path/to/destination/folder
```

Exporting by subject:

```bash
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    path/to/destination/folder
```

Exporting by subject and data types:

```bash
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    --data-type "anat" \
    --data-type "func" \
    path/to/destination/folder
```

Exporting with DICOM source data files:

```bash
fw export bids \
    --project "project_label" \
    --source-data \
    path/to/destination/folder
```

### BIDS Validation

Downloading the data from Flywheel does not guarantee that it is up-to-date with the *latest* BIDS specification. The BIDS standard updates regularly, which causes software, such as the BIDS Curation Gear, based on a previous BIDS version to lag behind in updating.

Therefore, it is good practice to use the [BIDS Validator](https://github.com/bids-standard/bids-validator) to ensure compliance with the latest BIDS version. There are multiple implementations of the validator (read the validator's documentation), but the [online version](https://bids-standard.github.io/bids-validator/) is probably the easiest and fastest to use.