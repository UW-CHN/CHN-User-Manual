# FreeSurfer `recon-all`

[FreeSurfer](https://surfer.nmr.mgh.harvard.edu/fswiki/FreeSurferWiki) is a software package that analyzes and visualizes structural and functional neuroimaging data. It is a reputable software known for its structural MRI analysis.

FreeSurfer commands are called from the command line, so having some familiarity is preferred. To download and install FreeSurfer onto your preferred local machine, follow their documentation [here](https://surfer.nmr.mgh.harvard.edu/fswiki/DownloadAndInstall). 

## Local `recon-all`

[`recon-all`](https://surfer.nmr.mgh.harvard.edu/fswiki/recon-all) is the command that performs XXX.

### Common Commands

Users are able to have `recon-all` perform any part of the cortical reconstruction pipeline with additional arguments. But most commonly, users specify `recon-all` to perform *all* parts of the cortical reconstruction Below are common commands one would use to call `recon-all`.

Command to perform all parts of cortical reconstruction on a T1-weighted image.

```bash
recon-all \
    -sd "/path/to/subjects/directory" \
    -s "/path/to/output/directory" \
    -i "/path/to/t1/weighted/image/file" \
    -all
```

Command to perform all parts of cortical reconstruction on a T1-weighted image while also [specifying a T2-weighted image to improve pial surfaces](https://surfer.nmr.mgh.harvard.edu/fswiki/recon-all#UsingT2orFLAIRdatatoimprovepialsurfaces).

```bash
recon-all \
    -sd "/path/to/subjects/directory" \
    -s "/path/to/output/directory" \
    -i "/path/to/t1/weighted/image/file" \
    -T2 "/path/to/t2/weighted/image/file" \
    -T2pial \
    -all
```

### Batch Processing

Here is a template shell script to perform `recon-all` on a directory. <a href="" download>placeholder!</a>

## Flywheel `recon-all`

Why you should run `recon-all` on Flywheel. 

Flywheel analyses are performed on the cloud server. `recon-all` is notorious for being a time consuming process. It is estimated that processing one subject could 6 - 24 hours depending on the computer's processor.

Where is this gear located on Flywheel.

### Example of how to run the gear

[license file](https://docs.flywheel.io/hc/en-us/articles/360013235453)
[analysis gear](https://docs.flywheel.io/hc/en-us/articles/360015505453)

### Output Files

These are the output files.

<figure class="double-border">
    <img src="../../img/freesurfer-gear-output.jpg" alt="Example of FreeSurfer recon-all analysis gear output">
    <figcaption class="margin-1em">
    This is a figure caption.
    </figcaption>
</figure>

