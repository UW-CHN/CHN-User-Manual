# BIDS Curation

The Brain Imaging Data Structure (BIDS) is a methods of organizing neuroimaging and behavioral data. The BIDS specficiation has become more widespread as it provides a standard directory structure for complicated neuroimaging data. It also facilitates data sharing across sites and labs.

To read more about the latest BIDS standard, go to the [BIDS Homepage](https://bids.neuroimaging.io/index.html) or the [BIDS Documentation](https://bids-specification.readthedocs.io/en/stable/).

## Flywheel + BIDS

## BIDS Curation Gear

[important!](https://docs.flywheel.io/hc/en-us/articles/360053720853-Webinar-BIDS-Templating)

[gitlab site](https://gitlab.com/flywheel-io/flywheel-apps/curate-bids)

## BIDS Curation Template File

## BIDS Curation Process

## Exporting Data in BIDS Format

### Flywheel Command-Line Interface (CLI) 

Currently, the only method of download data from Flywheel in BIDS format is through the Flywheel Command-Line Interface (CLI). The CLI is an additional Flywheel program that can be used from the computer's Command Prompt (Windows) or Terminal (Mac). To install the Flywheel CLI, go to [Flywheel's CLI Installation](https://docs.flywheel.io/hc/en-us/articles/360008162214) page.

### Exporting Data in BIDS Format with the Flywheel CLI

Once the CLI has been installed successfully, you can download your data in BIDS format from the Command Prompt or Terminal. 

The main command will take the form: 

```
fw export bids [optional flags] --project [project label] [dest folder]
```

The [Flywheel's BIDS Export Documentation](https://docs.flywheel.io/hc/en-us/articles/1500006477001) explains the exporting process additional information and options available through the CLI.

#### Common Commands

Export an entire project: 

```
fw export bids --project "project_label" /path/to/project_folder
```

Exporting by session (`\` allows for multiline commands): 

```
fw export bids \
    --project "project_label" \
    --session "ses-01" \
    path/to/project_folder
```

Exporting by subject: 

```
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    path/to/project_folder
```

Exporting by subject and data types:

```
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    --data-type "anat" \
    --data-type "func" \
    path/to/project_folder
```

## BIDS Validation

Downloading the data from Flywheel does not guarantee that it is up-to-date with the *latest* BIDS specification. The BIDS standard updates regularly, which causes software based on a previous BIDS version to have to update as well. 

It is good practice to use the [BIDS Validator](https://github.com/bids-standard/bids-validator) to ensure compliance with the latest BIDS version. There are multiple implementations of the validator (read the validator's documentation), but the [online version](https://bids-standard.github.io/bids-validator/) is probably the easiest and fastest to use.