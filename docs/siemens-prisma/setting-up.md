# Setting Up and Acquiring Scans

## What is the practical difference between the 12-channel and 32-channel head coils? Which one is best for fMRI?

RF coil selection is probably the first decision you will face when you start to develop a new protocol. Here are the main differences to consider:

- The 32-ch coil gets approximately twice the signal-to-noise ratio (SNR) of the 12-ch coil in the cortex. SNR for deep structures is about 50% better for the 32-ch coil. (See figure, below.) The 32-ch coil is fairly heterogeneous in its reception profile, being especially sensitive for frontal brain if the subject is high in the coil (i.e. the bridge of the nose sits between the two loops at the top-front of the coil). This can yield funny-looking images to the uninitiated, but there is nothing inherently wrong with the coil; all RF coils are somewhat heterogeneous.

- The 12-channel coil comprises linear struts arranged in a circular geometry whereas the 32-channel coil has pentagonal loops arranged on the surface of a partial sphere. The 32-ch coil therefore provides the ability to do parallel imaging, such as GRAPPA, with higher acceleration factors than the 12-ch coil. As a rough rule of thumb the 12-ch coil should be limited to acceleration factors of 2 whereas the 32-ch coil can use acceleration factors up to four. See the later section on GRAPPA for more information on GRAPPA.

- 32-ch coil has a smaller internal diameter than the 12-ch coil, and it can be a tight fit for large heads. Children and most female adult subjects have no problem fitting in comfortably but some large male adult heads may only fit with very minimal padding underneath the occipital pole, which may not provide sufficient comfort for a long duration scan.

- Because of its different geometry, we have an entire set of dedicated peripherals is available for the 32-ch coil. In particular, different mirror mounts must be used because of the different coil geometries. Also, the Siemens headphones won’t fit in the 32-ch coil so if you cannot simply use the in-magnet speaker to communicate with your subject (e.g. you want to provide an auditory stimulus) then you will need to use one of the insertable headphone variants. (Talk to Rick about the options.)

- Corrective lenses must be placed on the outside of the 32-ch coil; there is no room for goggles or glasses on a subject once he is inside the coil. (Talk to Rick about the custom mount for corrective lens use with the 32-ch coil.)

- Visual obscuration is quite different for the 12-ch and 32-ch coils. The 12-ch coil has a single strut that runs parallel with the subject’s nose, whereas the 32-ch coil has a vee-shaped gap for the nose. In general, the 32-ch coil may provide slightly less obscuration of the subject’s visual field but only if the subject is positioned high in the coil, with the eyes close to the two front-center coil loops.
- Both the 12-ch and 32-ch coils can be used bottom half only, e.g. for TMS studies or for retinotopic studies that require an un-obscured visual field.

So, which one is better for fMRI? As a general rule, the 32-channel coil will out-perform the 12-channel coil for most anatomical imaging applications. However, there may be particular subject groups (large men, for instance, or subjects who might not like the idea of being in a tight-fitting coil) or particular applications (e.g. the use of LCD goggles) that cannot be made to fit inside the smaller 32-channel coil.

More critically for fMRI, we have found that the 32-channel coil is more motion-sensitive than the 12-channel coil. This issue is under investigation. Note, however, that it’s not a Siemens-specific issue. Rather, it is related to the size of the smaller, more numerous coil elements in high dimensional coil arrays. (Tests on a 3 T GE scanner with three different vendors’ 32-channel coils all showed similar motion dependence as we see on our Siemens 32-channel coil.) Whether or not this motion sensitivity is a reason to avoid the 32-channel coil altogether is difficult to say at this point. Unless, that is, you don’t need the 32-channel coil for a particular reason, e.g. for high iPAT factor for GRAPPA, to attain very high spatial resolution (< 2mm voxels), or to match another site’s protocol. If you don’t require the use of the 32-channel coil, why take the risk with it when the 12-channel coil will work without the gamble?

If you opt to use the 32-channel coil then it is a good idea to enable the Prescan Normalize option on the Resolution > Filter tab when acquiring EPI time series for fMRI. This option acquires a brief (20 sec) low-resolution scan that is used to normalize the receive field heterogeneity of the head coil, thereby hopefully reducing somewhat the higher motion sensitivity of the 32-channel coil versus the 12-channel coil. In the absence of any normalization, motion of the brain relative to the head coil elements can be misinterpreted by a motion correction algorithm (assuming, as most do, that you will apply a rigid body realignment to the time series) and has the effect of reducing the temporal signal-to-noise of the time series. It’s perverse, but a very real likelihood that a 3D realignment can actually degrade TSNR when using a large array of small coil elements, as the 32-channel head coil happens to be. (Incidentally, the Prescan Normalize can also be used with the 12-channel coil, but we’re not yet sure whether there’s a definite benefit.)

When using the Prescan Normalize option you can save to the database the raw, un-normalized time series as well as the normalized data. I would strongly advise doing this because then you have a risk-free decision with regard to prescan normalization. You get raw data and normalized data. You don’t like the normalized data for any reason? Fine, ignore it and use the raw data you would have obtained anyway!

To get raw and normalized data go to the Resolution > Filter tab and select the “Unfiltered images” check box underneath the button that enables the Prescan Normalize. There is one caveat: this option won’t save the un-normalized data if you have the MoCo option selected. Then, both time series saved to the database will be prescan normalized, but the second time series will also have been motion-corrected via a realignment algorithm. (See the section on Motion Correction for more details on the MoCo options.)

Since this prescan normalization is an advanced option, and because its use is an active area of research both at BIC and elsewhere – there is very sparse literature on the motion sensitivity of the 32-channel coil as yet - I would strongly encourage you to talk to Ben or Daniel before initiating a new experiment on the 32-ch coil. Let us explain the issues in some detail. We should double check that you really need this coil, and assure that you understand the potential consequences of selecting it over the 12-channel coil.

Another minor consideration before selecting the 32-channel coil might be the availability of backup sites. At present, UCSF only has the 12-channel coil and console, so if the BIC scanner went down for an extended period of time and you wanted to move your scans to UCSF’s NIC, you’d have a problem unless you’re using the 12-channel coil.

The bottom line at this point is for you to know that there is a choice and that the choice presents significant differences. Talk to Ben when you’re ready to set up a new protocol/experiment and you can make a more informed decision then.

<figure>
    <img src="/img/12ch-and-32ch.png" alt="12 channel vs. 32 channel">
    <figcaption>
    SNR profiles for the Siemens 12-ch and 32-ch coils. Note especially the high cortical sensitivity of the 32-ch coil, but that the SNR is also higher in the midbrain when compared to the 12-ch coil.
    </figcaption>
</figure>

## I have a subject who has a lot of dental work. Is this person okay to scan?

Most modern dental work is MRI safe, meaning that there is minimal risk to your subject of having an MRI scan. This is not to say, however, that dental hardware won’t potentially have a negative effect on an fMRI scan, even if anatomical MRIs can be acquired safely and effectively. As you might suspect, if there is a large amount of metalwork in and around the teeth, there can be problems getting a good shim across the brain, especially its inferior surface (which is already somewhat compromised by the shape of the skull and presence of sinuses).

As a general rule we don't worry about retainers in the lower jaw. However, upper jaw retainers containing a significant amount of metal (usually stainless steel) or metal braces in lower or upper jaw can create shim problems. Movement of the metal, e.g. from swallowing, talking or head motion, may increase the amount of ghosting and decrease statistical power. A similar effect can occur in subjects having many metal amalgam fillings.

Whether or not to accept a volunteer for a scan can be difficult to assess without simply trying the scan. However, a basic rule of thumb is to accept retainers, accept three or fewer metal amalgam fillings (either jaw) and reject braces unless the subject is especially valuable, in which case try it and see. Note, however, that any subject with a retainer, extensive amalgam fillings or braces is likely to show a signal void for the mouth in anatomical scans such as MP-RAGE. This doesn’t in any way signify how the EPI signal will behave; the EPI signal characteristics will depend on spatial resolution, slice prescription, TE and many other factors.

## Why does the scanner instruct me that the patient bed might move when I start the first scan in my session (usually a localizer)?

Until a reference scan has been acquired, the scanner is using as its frame of reference the magnet isocenter - the center of the magnetic field, which is in the geometric center of the bore tube. This could, in principle, differ from the reference position, called REFERENCE, which we use. The reference we want to use is the center of our subject’s head, which we have just marked with the laser prior to putting the bed into the magnet.

As soon as a localizer (or any other image) has been acquired using the REFERENCE positioning mode, the scanner software then ‘knows’ to reference all subsequent images relative to that first image. This allows you to prescribe slices on each subsequent image however you like, and the scanner will track where you are in space. This stays true throughout your scan session provided you don’t move the patient table, or intentionally change the reference mode that’s been preset in all the scans you will use. (To change the mode you would need to access the System tab, and to know what you’re doing when you get there. Thus, it’s not something a routine user need worry about!)

## I can’t hear anything happening? How can I tell what the scanner is doing right now?

Look in the very bottom left-hand corner of the screen. It might say, for example: “Waiting for scan instructions,” or “Waiting for slice positioning,” or “Scanning 00:36 (3/20 B).” That last message tells you there are 36 seconds left in the current scan, and that it’s just finished acquiring three of twenty blocks in a time series. The other messages are usually self-explanatory. Don’t ask why some of the most useful information is hidden away in that bottom left-hand corner. It just is!

## Why do I sometimes get a message that the subject might experience peripheral nerve stimulation? Should I tell the subject?

From your safety training you will recall that one of the risks to a subject from MRI is peripheral nerve stimulation. This can arise because of the rapidly switched gradient magnetic fields; the clicks, bangs and pings the scanner emits while it is acquiring data. (The sounds don’t cause the stimulation risk – only auditory damage risk – but the gradients that create the noise also create the stimulation risk.) The scanner will issue a warning whenever it calculates that the stimulus limit will be approached for the scan you are trying to acquire. If the limit were actually exceeded the scanner wouldn’t let you acquire and you’d need to change a parameter. So this condition isn’t necessarily hazardous, it’s just telling you that in subjects who are unusually sensitive to changing magnetic fields, they might feel something.

So what to do about it? In general, it’s probably not a good idea to warn the subject that he or she might experience peripheral nerve stimulation because then he/she is going to be on high alert, and it is entirely possible (even likely) the subject will think the normal scanner vibration is the sensation you’ve just warned about! A better approach is to simply remind the subject at the start of the scan to squeeze the squeeze-ball if he/she is uncomfortable at any point during the scan.

If a subject does report feeling tingling or twitching, don’t dismiss it! Assume this particular subject is sensitive to the pulsed magnetic fields and discontinue the scan if the subject is unwilling to proceed. Feel free to explain the effect to the subject, and if they are happy to continue, go for it. Err on the side of caution, however.

## How does the AutoAlign feature work? Should I use it?

AutoAlign is a software method that allows, under the right circumstances, slice prescriptions to be set automatically as part of a protocol. It is designed to allow a protocol established on one subject to be duplicated for later subjects. Essentially, here is how it would work in practice:

1. On your first (pilot) subject, you acquire an AA scout scan, check that the AA software has been enabled (yellow slice bar icon), then set all your slice prescriptions by hand on whatever anatomical scans you want to use. (You’d typically use the Localizer plus perhaps an MP-RAGE or another fast 2D anatomical scan to define the slice prescription.)

2. Having completed the entire scan protocol this way, make a new (empty) protocol that will receive duplicates of all of the scans you have just acquired.

3. In the new protocol, drag and drop the AA scout plus all the scans you want to acquire from subsequent subjects. (You’ll learn how to make protocols in user training.) You can drag and drop scans from the exam queue or from the Patient Browser. Save the new protocol.

4. For subsequent subjects, bring up the saved protocol and run the scans in order, beginning with AA scout. Once it is active (yellow slice bars), the software will place slice positions in (approximately) the same anatomical locations as was done for the first subject.

So does AutoAlign work? It depends! There are two flavors: old (AAScout) and new (AAHScout) suitable for head imaging. The old AAScout can be expected to fail (it will show red bars instead of yellow ones) if you have a subject with significant pathology, such as a large stroke. It might work, but it might not, too. Furthermore, if you are scanning children or adolescents 17 or younger, you will need to cheat the software by telling the patient registration that your subject is older; the software won’t run if the subject is registered as being under 17. Once that trick is established, many people then find AAScout works quite well on adolescent brains. And finally, AAScout definitely won’t run on anything that isn’t a human brain, such as a phantom.

The newer AAHScout uses a different algorithm to determine reference features of the brain. In preliminary tests it seems to be more accurate than AAScout. Furthermore, AAHScout can be used to replace the Localizer scan, saving twenty seconds of data acquisition.

Whether or not you should use either AutoAlign procedure depends on the specifics of your experiment. If your EPI slice prescription covers all or nearly all of the brain, has (near) isotropic voxels and you aren’t especially worried about getting certain anatomical features captured within specific 2D planes, then the performance of AutoAlign is probably good enough for you. At a minimum, however, you will want to inspect the automated slice prescription and make sure the yellow slice box is roughly where you intend. Don’t assume that it will always work! But if you’re doing high-resolution retinotopy with a dozen coronal slices placed so as to just capture all of V1-V5 then you should probably stick to prescribing your slices by hand/eye, using detailed localizer/pilot scans and your anatomical knowledge to place your slices.

One problem that AutoAlign can introduce for EPI is a rotation of the image plane, i.e. a rotation of the read and phase encode axes away from the primary gradient axes. In a typical axial scan, for example, the readout dimension uses the X gradient only (subject’s left-right) while the phase encoding is performed by the Y gradient (subject’s anterior-posterior). Rotating the image plane causes a mixing of these assignments and can increase EPI ghosting if the rotation becomes large (>5 degrees). If you do use AA, always check the parameter Phase enc. dir on the Geometry parameter card. It should be at or near zero. (See figure below.) If AA renders this parameter non-zero, overrule it and set Phase enc. dir to zero manually.

<figure>
    <img src="/img/phase-enc-dir.png" alt="Phase encoding direction">
    <figcaption>
    On the Routine tab, click the three dots to the right of the Phase enc. dir. field. This opens the Inplane Rotation window, above. Assure the Rotation angle is zero. If AutoAlign has set it non-zero, set it back.
    </figcaption>
</figure>

## I have an existing protocol that uses the old AutoAlign (AAScout). How do I get and use the new AutoAlign (AAHScout) instead?

You can get a copy of the AAHScout sequence in the Exam Explorer, here:

    SIEMENS > head > library > localizer

Select either AAHScout for the 12-channel coil or AAHScout_32 for the 32-channel coil.

AAHScout replaces the combination of a Localizer and the old AAScout; there’s no need to acquire a separate Localizer unless you want to. AAHScout automatically creates a three-plane localizer display and loads it into the three windows to allow slice prescriptions.

AAHScout has three modes: Basis, Brain, and Brain Atlas, settable on the Routine task card of the experiment you are about to acquire; that is, on your destination EPI or MP-RAGE scan, for example, not on the AAHScout scan itself. See the figure below for the location of the AutoAlign mode field on the Routine tab (of a destination EPI scan). Note that the default mode is off – indicated by three dashes – so if your slices don’t appear where you think they should, check that you have a mode enabled!

<figure>
    <img src="/img/head-brain.png" alt="Head brain">
</figure>

According to the Siemens documentation, which isn’t very clear on how AAHScout is supposed to work, Brain Atlas is equivalent to the old AAScout, i.e. it uses a brain atlas to compute slice positions. I tested it, it doesn’t work especially well compared to the Brain or Basis modes, but I didn’t compare directly against the old AAScout. (So, if you want to use the old AAScout, don’t use AAHScout and set the mode to Brain Atlas! Use the old AAScout instead!)

Brain is the mode to use for most standard axial and axial oblique prescriptions, and in a quick test it worked as well as Basis for coronal slices, too. Thus, unless I come across a failure mode in the future, my recommendation would be to always use the Brain mode regardless of your slice prescription.

## I don’t want to trust AutoAlign. How should I define my slice positions manually?

In general, the Localizer scan can be used to set slice positions on. However, that scan acquires only three images: one sagittal, one axial and one coronal slice, each acquired at the geometric center of the magnet. Unless your EPI coverage is so large that whole brain coverage is assured no matter how big the subject’s head/brain, the anatomical information in the Localizer is probably not sufficient to assure that your EPI slices will cover both temporal poles, for example. Thus, it is a good idea to use a second anatomical scan to check your prescription on, and to make any subtle adjustments.

(And in case you’re now wondering “why bother with the Localizer, then?” the answer is that it gives you, in under twenty seconds, a view of your subject that tells you whether you got the brain in the center of the magnet, the head isn’t grossly rotated, etc.)

Some experiments will allow the acquisition of the MP-RAGE before any functional scans. If so, the MP-RAGE gives you about 5 minutes to set up scripts, etc. Also, once it has acquired, the MP-RAGE can be dragged into the graphical user interface (GUI) windows and used as an underlay for prescribing your EPI slices on. The typical MP-RAGE is acquired in the sagittal plane, meaning that in the GUI you’ll see a set of 2D slices acquired in the sagittal view. Leafing through these slices will easily allow you to determine the entire 3D extent of your EPI prescription, including over both temporal lobes. But if you don’t want to set up using a sagittal view, it is fairly straightforward to have the MP-RAGE acquire such that the GUI will display axial or coronal slices. See Ben for more information on how to set that up.

If you don’t want to, or can’t, spend the first five minutes of a session acquiring an MP-RAGE, there is a fast alternative. You can use the gre_neuro sequence in 2D or 3D mode (2D is probably best) to acquire low-resolution sections of the whole brain. Typically you would acquire about 24 slices with a resolution of about 4-5 mm in 15 seconds, but it is possible to spend more or less time and get higher or lower resolution, respectively.

You can grab a suitable starting scan for gre_neuro set up for 2D acquisitions from the protocol DanZone/RELEASED, in either gre_neuro_12ch or gre_neuro_32ch. If you are unfamiliar with the sequence or the use of multislice 2D gradient echo images for setting slice prescriptions, drop Ben a line and get some tuition at the scanner. Below are examples of using MP-RAGE and gre_neuro_2DLoc scans to check that an EPI slice prescription covers both temporal poles as well as all of parietal cortex. Either scan can be used, the MP-RAGE being preferred if it can be acquired before any EPIs.

<figure>
    <img src="/img/mprage-gre-neuro-2dloc.png" alt="Example MPRAGE and gre_neuro_2DLoc scans">
    <figcaption>
    To use either the MP-RAGE or a gre_neuro_2DLoc scan as a reference for your slice prescription, use the left mouse to drag and drop the completed image icon from the exam queue to the GUI window, as shown above.
    </figcaption>
</figure>

## I want to add a new acquisition and acquire exactly the same slices as this other EPI acquisition I just acquired. How do I tell the scanner to do that?

Once you’ve got a slice prescription you’re happy with (and assuming you’re not using AutoAlign) you may well want to assure that the prescription doesn’t change for all future EPIs, as well as perhaps for field maps or other 2D acquisitions. The specific parameters (and even the acquisition sequence) within the future scans may be different, but you want the slices to match.

The slice packet location can be explicitly copied from one acquisition to another in a couple of different ways:

**(1)** *When you build the protocol:*

Having established your protocol in the Exam Explorer, identify the first experiment in the series of scans that is going to have the slices that you want to propagate into one or more later acquisitions. This might be the first EPI acquisition, for example. We are going to consider this acquisition the “source scan” for the purposes of slice packet location.

Next, right click on a target acquisition - one that occurs beneath (after) the source acquisition you want to copy from - and scroll down to the bottom option of the menu to select Properties. This will open the Protocol properties window (below). Select the tab labeled Copy References. The window will then look something like this:

<figure>
    <img src="/img/protocol-properties.png" alt="Protocol properties">
</figure>

Check the Copy reference is active box as shown above. This will reveal a list of potential source experiments that you can copy parameters from. There are five potential source scans in the figure above. Find the one on the list that you want to use as the source, select it and ensure that just the Center of slice groups & sat regions option is highlighted on the right. Also ensure that the two boxes at bottom-left are unchecked. (In this example we are assuming that all the spatial parameters have already been set up correctly in the target acquisitions, and all we’re trying to do here is match the center of the target slice packet to the center of a source slice packet.)

Click OK to close the window. Now, in your protocol, you will see a little icon adjacent to the target acquisition, it looks like two pages of text with a number next to them. The number will be the acquisition number of the source acquisition. Re-save your protocol.

Note that if you change the order of the acquisitions in your protocol, e.g. you insert a new acquisition before the source, or between the source and the target, the Exam Explorer will update the copy references icon number appropriately, and ensure that the target stays correctly associated with the source you chose. Likewise, if you start your session by moving your entire protocol into the Exam queue and then find that you have to re-acquire a scan between the source and the target (or you insert a new acquisition that wasn’t in the original protocol), the Exam queue will update the copy references parameter to maintain the correct association of the target and source.

**(2)** *During a scan:*

If you would rather copy the slice packet position manually, during your session, e.g. because you bring over one acquisition at a time in the Exam queue and decide on-the-fly when to acquire a co-planar acquisition (such as a field map or a high-res 2D T1 image), then first establish your source acquisition and start or fully acquire the scan. In the following example, scan #2 in the exam queue will be the source. It’s already acquiring. Scan #3 is the target and we want to match the slice positions. Ensure the target scan is open, as shown, then right click the source scan to open the following menu:

<figure>
    <img src="/img/copy-parameter-1.png" alt="Copy parameters option">
</figure>

Select the Copy Parameter option, as shown above. This will open a new window, as shown below:

<figure>
    <img src="/img/copy-parameter-2.png" alt="Copy parameters new window">
</figure>

Select the Center of slice groups & sat regions as shown above, and ensure the two boxes at bottom left are unchecked. (As before, we are assuming all the spatial parameters of the target experiment have been preset correctly, or will be set up correctly once the slice packet has been copied.) Click OK to close the window. As the window closes you will see the yellow bars depicting the slice packet in scan #3 move to the new slice prescription, matching that already being acquired in scan #2.

## When does shimming happen and what is actually done?

Shimming is the term given to the optimization of the magnetic field over the subject’s brain. In the absence of a subject, the magnetic field is homogeneous to a few parts per million across a 30 cm diameter spherical volume (DSV). But the subject’s head degrades the field considerably. In some places, such as the frontal lobe, the field heterogeneity can become as bad as parts per hundred. Unless this degradation is accounted for, echo planar images (or those regions of EPIs where the field is most heterogeneous) may have low signal (i.e. “dropout”), high distortion and high artifact (ghost) levels.

To compensate for this degradation of the main magnetic field, the “bad” field regions are opposed (and ideally cancelled) by small magnetic fields generated by resistive (copper) coils that are wound on the gradient set, inside the magnet bore tube. You don’t really need to know anything about these coils other than that they exist, and that they are controlled by a shimming algorithm that attempts to optimize the magnetic field homogeneity over the entire head.

Unless otherwise instructed the scanner will perform shimming automatically using a field mapping procedure, over a volume that encompasses your slices/volume of interest. No further shimming will be conducted in the current scan session unless you request a re-shim explicitly (see later). In general you’ll find that you’ll trigger a shim based on either your first EPI prescription or your MP_RAGE, whichever comes first in your protocol, and that’ll be it for the session.

The shimming routine involves a magnetic field map acquisition. This is a 20 second buzzing that happens before the scan you’ve just initiated. The scanner acquires this field map and computes a correction based on the result.

Expect the 20 seconds of buzzing only for the first EPI (or your MP-RAGE) scan in your protocol. After that, the only noise you’ll hear before your EPI starts is a couple of quick clicks. See later for an explanation of what those are doing.

An advanced shim mode is available. In this mode, the scan does a first field map as in the standard mode and then acquires a second map to check the validity of the first. A small correction is made, if necessary, and a third field map is acquired to check that result. The total advanced shim takes approximately 90 seconds, whereas the standard shim takes 30 seconds (including computations). To request the Advanced Shim rather than the Standard Shim, go to the System card and select Adjustments. Shim mode is on the top of the left column.

Should you use standard or advanced shimming? Well, based on the appearance of EPI ghosts, it seems that standard shimming is perfectly acceptable. If you have the time in your protocol, however, feel free to try the Advanced Shim. (Come talk to me first.) You probably won’t see any visible differences in EPI quality if you compared the two methods by eye, but you might find small improvements in fMRI statistics in hard-to-shim areas like frontal lobe. At this point there is insufficient evidence for me to recommend everybody use advanced shimming. My recommendation is to use standard shimming unless you are interested in partial brain coverage (e.g. occipital-only, or frontal-only scans), at which point there may be some benefit to advanced shimming. But we should talk about it before you try it!

Finally, it is also possible to change the volume over which shimming is performed; you don’t have to accept the shim to be over the default, pre-defined volume if don’t want that for some reason. The default shim volume is set to cover the entire 3D volume of your slice prescription (either the MP-RAGE or EPI, whichever happens first in the imaging session). But if you want to tinker with a different (usually smaller) user-defined shim volume, drop me a line and I’ll show you how to do it. This can be useful if you are trying to do fMRI of a restricted volume such as the amygdala, LGN or occipital pole.

## I want to re-shim my subject’s brain midway through my session. How do I do it?

Here's what you need to do to instigate a shim at any point during a protocol:

1. The scanner must not already be running or have scans that are queued, ready to acquire automatically.

2. In the exam window (where you start/stop scans) open the next exam (i.e. the scan you're about to run) so that you see the small black tab to the left of the protocol number. (Doing this also shows the slice prescription in yellow on the three image display windows.)

3. Now that the current protocol is open, select the Adjustments pull-down from the Options menu at the top of the screen.

4. On the window that opens, find the tab labeled Show towards the bottom-right. It's the last in a row of five tabs.

5. On the Show tab, click the Invalidate All button and then close the window.

6. Now start your scan as normal, using the Apply button above the protocol window. You should hear the scanner shim (low buzzing for 20 seconds and a message in the bottom-left corner of the screen telling you it's shimming).

Simply repeat this procedure whenever you want to force a new shim. You will usually want to re-shim whenever you know the subject has moved, or if the ghost level in your EPI suddenly gets a lot worse (often an indication that your subject has moved without you knowing). See below for tips on shimming during a session.

## How do I know whether I should re-shim or not?

The most common reason for re-shimming in the middle of a session, rather than just once at the beginning (see above) is subject movement. You can expect a new shim to improve the quality of the EPI if the subject has moved and is now stationary, e.g. the subject just sneezed or needed to adjust his back position to get comfortable. In these situations we can expect the subject’s head to remain still, albeit in a new position, perhaps, compared to earlier in the session. We should re-shim as a prophylactic measure; assume it will help and don’t waste time trying to diagnose whether the subject actually ended up in a new position or not. You will then most likely want to acquire another quick localizer scan and check the positioning of your EPI slices on the (new) position. Those of you using AutoAlign, you’ll want to acquire another AAScout at this point, too. (Or, if you are using AAHScout, that one single acquisition suffices as both localizer and AutoAlign basis.)

What if you have no external clues that a subject might have moved, e.g. because you didn’t hear him sneeze or adjust his position? How can you keep a check on your subject’s behavior? A telltale sign that the subject may have moved but is now motionless is a pronounced increase in the ghost level from earlier in the session, where the ghosts are now more intense but relatively stable over time. Consider re-shimming any time you suspect the ghosts might have got worse. (And don’t waste too much time attempting to diagnose whether the ghosts really are worse or not. It’s often faster to simply re-shim than to determine whether you’re imagining things!)

Another common situation is the slow, drift-like motion that arises because the subject’s neck/back muscles relax during the session, or the foam supporting his head compresses slowly over time. (Hard to blame the subject for either of these events!) If you are doing a long run, meaning anything over about 30 minutes, then it won’t hurt to re-shim any time you find yourself with a spare 30 seconds between fMRI runs.

In general, whenever you know or suspect that the subject may have moved (and is now still), re-shim. But, if you have reason to believe the subject is continually moving, e.g. because the ghosts are fluctuating wildly from volume to volume and a re-shim didn’t fix the problem, you either need to re-pack his head with more foam, or you need a new, more compliant subject!

Another reason to want to re-shim midway through a session is gradient heating. But before we look at the effects of heat, we first need to know why it might be an issue.

When the magnet was installed, steel bars called passive shims were inserted into trays positioned between the inner surface of the magnet cryostat (the vessel containing the superconducting wire coil and all the liquid helium) and the gradient coils (the coils that impart the spatial information into the MR signal and which produce all the acoustic noise). The gradient coils double as the ‘fine tuning’ shim coils, too, allowing the magnetic field to be homogenized to a couple of parts per million. Now, let’s suppose that we decide to run an EPI sequence flat out for 30 minutes. Driving the gradient coils to do EPI produces heating in the coil as well as the familiar acoustic noise. That heat must be removed as quickly and efficiently as possible or the gradient coil will fail. (Actually, in our case there are temperature sensors that should take the scanner offline before damage can be done.) The gradient cooling is provided by chilled water fed from a unit located out the back of the scanner building. The water is fed in at about 20 C and goes out at between 20 and 30 C, depending on the particular EPI sequence being run; the more we drive the gradients, the more heat we need to remove, the warmer will be the return water temperature.

Before you start your scan the magnet and its coils are at thermal equilibrium. Typically, this means the gradient coil and the adjacent passive metal shims are at about 20 C, because that’s the temperature of the water circulating through the gradient coil. (It’s also close to the ambient temperature of the magnet room.) Once we start running a scan, however, the gradient coil will start to heat up and this will also heat the passive shim metal nearby (via simple thermal conduction). After about 5-15 minutes, depending on the duty cycle of the EPI (i.e. how aggressively we are driving the gradients), the gradient coil and passive shim metal will establish a new, dynamic equilibrium somewhere approaching 25-30 C. This has the effect of causing the magnetic field to change slightly from its prior, resting value. And now you should be able to spot the problem: if you shimmed the subject when the magnet was at the cooler temperature, the magnetic field is now not exactly the same as it was; in effect, the gradient heating has slightly ‘de-shimmed’ the subject. We should consider re-shimming with everything warmed up.

So how much of a problem is gradient heating, and when and how often should you re-shim to mitigate heating effects? It all depends on the duty cycle of your EPI (aggressive, high-resolution scans will generate more heat and be more susceptible to field drift), the duration of your EPI scans (time series acquisitions longer than 5 minutes will be more susceptible to field drift), and the amount of time in between your EPI scans. This latter point – the time between EPI runs - is the really sticky bit. It turns out that the cooling is rather efficient, which is what you want when you are running EPI but not really what you want when you’re in between runs! If you have a one-minute break between runs to set up a new script, there’s probably little departure from the steady-state (warm) temperature by the time you start the next run. But if you spend five minutes or more between runs, expect the system to have cooled sufficiently to the point where the following run will start from a condition nearer the baseline temperature than the steady-state, warm temperature.

It is very difficult to make recommendations with regard to trying to shim away the effects of heating; we are trying to fix an exponential process with an occasional single point of correction. Some general rules are therefore useful: shim once at the start of the session, then shim again after you have run your first EPI time series (because the scanner will have warmed up a bit). Then don’t bother to re-shim unless you happen to leave a large gap (2 minutes or more) between two EPI time series, in which case repeat the prior procedure (i.e. shim now, then shim again after the EPI run, then don’t shim again unless you have a large time gap between runs). And of course be vigilant for signs of subject motion throughout, since you’re not just trying to combat the effects of heat during your experiment!

## I want to know how long my scan will take. Where is the scan time shown?

On the Exam display, look approximately halfway down the screen, below the three image display windows and immediately above the parameter card area. In a violet/blue color is a line of information, for example:

    TA: 6:46    PM: REF PAT: 2  Voxel size: 1.6x1.6x3.0 mRel.  SNR: 1.      : epfid

The information above is interpreted as follows:

- TA - time of acquisition, 6 mins 46 seconds.
- PM – parallel mode is a reference scan method with iPAT factor of two. (More on iPAT later.)
- The Voxel size is 1.6x1.6x3.0 mm. To get voxel size with two decimal places precision, place the mouse over the Voxel size field. It pops up in a new text box.
- Relative SNR you can ignore. It will always appear as 1.

The pulse sequence being used is labeled as epfid. Place the cursor over the epfid word and a popup will tell you which pulse sequence is in use. Typically you will use ep2d_neuro, but you could also be using ep2d_bold or ep2d_pace if you have an older protocol.

## What is the difference between the Scan and Apply buttons for starting a scan?

Somewhat counter-intuitively, the Apply button initiates the acquisition for the current scan and doesn’t alter anything else in the scan queue. The Scan button initiates the current acquisition, too, but it also makes a clone of the protocol and appends (or inserts) it immediately after the scan that has just been initiated. So the Scan button could be used for a series of identical EPI acquisitions, say, without the need to bring over a fresh protocol or use the Append menu item to make a protocol clone. In general I am in the habit of only using the Apply button, and if I need a repeat (cloned) acquisition I first make one using the Append menu item. It’s personal preference, but I find it makes keeping track of what’s in the protocol queue that much simpler. As far as the acquisitions themselves are concerned, however, there is no difference.

## Help! What pulse sequence am I using?

The pulse sequence name is given in the violet/blue line of information on the Exam task card. (See the answer to the question above about scan time for how to read the information you want.) The pulse sequence is the last information field on that line. It might say epfid, for example. This is not actually the sequence name, however! To determine the sequence name, place the cursor over the epfid field. As you do, a window pops up for a few seconds and displays two more fields: Sequence name and Sequence variant. Sequence name could be ep2d_bold, for example. ep2d_neuro is the preferred sequence for all BIC users. There are some differences between the different EPI pulse sequences, a general explanation of which is provided in later sections.