# Exporting Data in BIDS

## Flywheel Command-Line Interface (CLI)

Currently, the only method of download data from Flywheel in BIDS format is through the Flywheel Command-Line Interface (CLI). The CLI is an additional Flywheel program that can be used from the computer's Command Prompt (Windows) or Terminal (Mac). To install the Flywheel CLI, go to [Flywheel's CLI Installation](https://docs.flywheel.io/hc/en-us/articles/360008162214) page.

## Exporting Data in BIDS Format with the Flywheel CLI

Once the CLI has been installed successfully, you can download your data in BIDS format from the Command Prompt or Terminal.

The main command will take the form:

```bash
fw export bids [optional flags] --project [project label] [dest folder]
```

The [Flywheel's BIDS Export Documentation](https://docs.flywheel.io/hc/en-us/articles/1500006477001) explains the exporting process additional information and options available through the CLI.

### Common Commands

Export an entire project:

```bash
fw export bids --project "project_label" /path/to/project_folder
```

Exporting by session (`\` allows for multiline commands):

```bash
fw export bids \
    --project "project_label" \
    --session "ses-01" \
    path/to/project_folder
```

Exporting by subject:

```bash
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    path/to/project_folder
```

Exporting by subject and data types:

```bash
fw export bids \
    --project "project_label" \
    --subject "sub-01" \
    --data-type "anat" \
    --data-type "func" \
    path/to/project_folder
```

## BIDS Validation

Downloading the data from Flywheel does not guarantee that it is up-to-date with the *latest* BIDS specification. The BIDS standard updates regularly, which causes software, such as the BIDS Curation Gear, based on a previous BIDS version to lag behind in updating.

Therefore, it is good practice to use the [BIDS Validator](https://github.com/bids-standard/bids-validator) to ensure compliance with the latest BIDS version. There are multiple implementations of the validator (read the validator's documentation), but the [online version](https://bids-standard.github.io/bids-validator/) is probably the easiest and fastest to use.