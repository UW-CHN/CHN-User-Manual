# Computational Resources

Analysis of neuroimaging data requires non-trivial computational resources.

As you are planning data collection and data analysis and as you are raising and
allocating resources to perform your studies, you will want to consider issues
such as initial and ongoing cost, ongoing maintenance work required, level of
expertise that is required, etc.

This section will discuss a few options that are available for computing with
neuroimaging data.

Generally speaking, there are several options for computing:

1. You can buy the hardware you need and stash it in your lab. Also known as the "server in a closet" solution. Though this is probably the option with the lowest startup cost, it is not generally recommended. In particular, without a robust remote backup plan, this option exposes you to potentially catastrophic data loss due to hardware failure or environmental conditions in the particular closet in which you stashed the hardware. You would also be personally responsible to keep tabs on the hardward and upgrade as needed.

2. Buy hardware and put it in a rack (that you rent) in UW-IT's data center. This is also called *co-location*. This is a relatively cost effective way of doing things, but *only if you have substantial system administration knowledge and experience*. Details can be found [here](https://uw.service-now.com/sp?id=sc_entry&sys_id=88cd79cddb9f3bc437ae9ec6db961961&sysparm_category=5942fc69db62bf40d6a77a8eaf96190b)

3. Managed on-premise high-performance computing. One option is through the centralized UW IT resources -- the Hyak high-performace cluster is one of your choices there and is described in the [Hyak](hyak.md) section. Another option is the IBIC cluster, described in the [IBIC](ibic.md) section (TODO).

4. Cloud computing. Public cloud computing vendors provide a range of services, starting from bear compute and storage and all the way to trained machine learning algorithms that can be accessed through an API. There are various options for this, which are described in the [Cloud](cloud.md) section.
