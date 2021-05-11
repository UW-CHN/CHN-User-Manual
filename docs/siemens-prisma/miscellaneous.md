# Final Issues

## I want to scan overnight. Is there anything I need to watch out for?

Yes there is. The magnet’s stability is maintained in part by a drift compensation coil. As the magnet drifts, e.g. with temperature, this compensation coil has induced in it a current which then makes it appear as if the magnetic field is static. However, the coil can’t keep on collecting current ad infinitum. Thus, it is ‘quenched’ once a day, so that instead of a steady magnet drift over 24 hours, instead there is a single ‘step’ down in field. This quench step happens at 2 am each day.

If you happen to be running a scan during the compensation coil quench there will be a sudden shift in the appropriate on-resonance frequency; a shift that your present acquisition doesn’t ‘know’ about. Your images (whether EPI or anatomical) will therefore likely suffer from artifacts that could be big or small, depending on the size of the frequency step.

To avoid these problems, it is suggested that you don’t scan between about 1.55 am and 2.05 am, using the Siemens clock at the bottom-right of the screen to determine the time the scanner is using.

## I hear we have a research agreement with Siemens. Why should I care?

If you are writing pulse sequences or doing anything that utilizes Siemens software for development then your work is probably covered by the terms of UC’s research agreement with them. In short, writing code (processing modules, pulse sequences) for the Siemens scanner – even if Siemens doesn’t actually help you do it – gives them “non-exclusive, royalty-free rights” to any intellectual property (patents) that you might submit based on your work. Note, however, that the agreement does not extend to so-called “derivative works,” such as using someone else’s customized sequence for an experiment, provided that in order to do the experiment you don’t make your own modifications to the source code. Derivative works are interpreted to mean any actual use of a method after it has been developed, the development having already taken place under the terms of the Siemens master research agreement (MRA), whether at UC or elsewhere.

As a general rule, then, if all you do is use pulse sequences to acquire data, whether it’s with EPI, ASL or whatever, and all you do is neuroscience, you have nothing further to worry about. Your revolutionary test for Alzheimer’s disease that utilizes a clever fMRI scan is all yours (and UC’s) to patent. (It would be considered derivative work.) But if you are working on pulse sequence development, you should be doing so having read over the terms of the MRA and possibly having submitted an addendum to Siemens (through the UC office of industrial relations). If you intend to do work that you think might be covered by the MRA, contact Ben for more information.
