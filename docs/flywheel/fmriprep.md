# fMRIPrep

background about fmriprep

[fmriprep documentation main page](https://fmriprep.org/en/20.2.5/index.html)

## Local fmriprep

[usage notes](https://fmriprep.org/en/20.2.5/usage.html)

```bash
fmriprep-docker \
    "/path/to/bids" \
    "/path/to/derivatives" \
    participant \
    --fs-license-file "/path/to/fs/license.txt"
```

```bash
docker run --rm -e DOCKER_VERSION_8395080871=20.10.8 -it \
    -v "path/to/filter.json:/files/filter.json:ro" \
    -v "path/to/fs/license.txt:/opt/freesurfer/license.txt:ro" \
    -v "path/to/bids:/data:ro" \
    -v "path/to/derivatives:/out" \
    nipreps/fmriprep:<tag> \
    /data /out participant \
    --bids-filter-file /files/filter.json \
    --fs-license-file /opt/freesurfer/license.txt
```

## Output of fMRIPrep

[output of fMRIPrep documentation](https://fmriprep.org/en/20.2.5/outputs.html)

```plaintext
output_directory
├── fmriprep
│   ├── dataset_description.json
│   ├── ...
│   ├── sub-<subject_label>
│   │   ├── ...
│   │   └── ses-<session_label>
│   │       ├── anat
│   │       └── func
│   └── sub-<subject_label>.html
└── freesurfer
    ├── fsaverage
    └── sub-<subject_label>
```

## fMRIPRep Output on Flywheel

[errors on flywheel](https://docs.flywheel.io/hc/en-us/articles/360018872774)

[include license.txt](https://docs.flywheel.io/hc/en-us/articles/360013235453)