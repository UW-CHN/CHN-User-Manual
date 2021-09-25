# Computational resources provided by UW IT

The University of Washington Information Technology (UW-IT) unit is the central
technology organization for the UW, and is responsible for the network and
computing infrastructure, as well as delivery of other foundational information
technology services to the entire campus system. The research computing division
in UW-IT maintains petascale infrastructure, predominantly consisting of a
family of shared scalable campus supercomputers (called “HYAK”) and
high-performance parallel file storage system (IBM Spectrum Scale or GPFS). The
research computing division also maintains a geographically redundant tape-based
archive service (called “LOLO”), and research networking to interconnect
research laboratories and facilities located across the campus, to central data
centers and computing facilities, and to the broader internet, through a Science
DMZ.

## Infrastructure

The research infrastructure footprint is spread across two main campus data
centers in the UW Tower and the 4545 Building. There is an off-site data center
leased through a commercial provider in Spokane, WA for backup and resiliency
purposes. The UW Tower is 9,500 sq ft of raised floor space capable of
delivering 1.8 Megawatts of power to 222 racks. The raised floor weight limits
are 1,800 lbs per two standard data center floor tiles (i.e., 8 ft2). The 4545
building is 11,800 sq ft of space on concrete slab flooring with overhead
cabling capable of delivering 500 Kilowatts of power to 290 racks, all of which
are engineered for redundant power. The off-site data center in Spokane, WA is
provisioned for 1,760 sq ft of data center space and 73 racks of capacity.

## Compute

The UW flagship supercomputers (collectively referred to as “HYAK”) consists of
multiple clusters each run on the shared condo model. The original cluster, Ikt,
was a 10 Gbps Myrinet interconnect Intel Xeon Sandy Bridge and Ivy Bridge
generation processors system commissioned in 2013 and decommissioned in 2020.
The current generation cluster, Mox, is a 100 Gbps Omnipath interconnected Intel
Xeon Skylake and Cascade Lake processor generation system with over 18,376
compute cores. Mox also features 20 Xeon Phi and 112 NVIDIA Turing generation
GPU accelerator sub-systems. Mox was commissioned in 2018 and slated to be
decommissioned in 2024. The latest generation cluster, Klone, was commissioned
in March 2021 and is a 200 Gbps HDR Infiniband interconnected heterogeneous
cluster with 13,440 compute cores of Intel Xeon Cascade Lake and Ice Lake and
AMD EPYC generation processors. Klone features a mix of 320 NVIDIA Turing and
Ampere generation GPU accelerators. Starting in late 2021 the Klone cluster will
implement hybrid cloud bursting through the SLURM job scheduler plugins to both
Google Cloud (GCP) and Amazon Web Services (AWS). Hyak is inspired by the local
cultural heritage of the Pacific Northwest and means “fast” in the Chinook
trading jargon (a mix of native, French, and other languages). The current
cluster names (Ikt, Mox, and Klone) represent numbers in the language (i.e., 1,
2, and 3) for each successive cluster generation. Compute is provisioned to
researchers through a “condominium” model, whereby the researchers have access
to a reserved pool of cores, but can access other idle cores on the cluster
through a queuing system.


## Storage

The UW-IT research computing group offers two tiers of research data storage.
The most performant being a parallel file system using Spectrum Scale (formerly
IBM GPFS) called “gscratch” with 2.4 PB total capacity capable of being
delivered over 100 Gbps through our HPC interconnect. gscratch uses software
Hierarchical Storage Management (HSM) to automatically migrate frequently
accessed data to an even faster flash tier with 500 TB of NVMe, one of the most
performant storage media available today. The research computing team has
optimized further and coupled the flash storage with the HPC interconnect (i.e.,
NVMe over infiniband to GPU) to eliminate any storage performance bottle necks
for emerging machine learning or other GPU accelerated scientific applications.
In the other direction, HSM automatically migrates colder data on Spectrum Scale
to a slower, cost-effective tape medium (called “lolo”) with an additional 1 PB
of capacity. gscratch lives in the UW Tower data center and is connected to lolo
in the 4545 Building data center 600 feet away. From there it is automatically
mirrored to an identical tape cluster in Spokane, WA providing our geographical
redundancy. In total, the research computing storage offering adheres to the
industry best practice “3-2-1” storage and data management strategy. That is, 3
copies of your data on 2 separate media of which 1 copy is off-site. In the near
future research computing plans to offer an intermediary storage tier, an
S3-compliant object storage cluster. Starting in late 2021 the lolo archive tier
will HSM to multiple commercial cloud provider cold storage offerings (i.e.,
cloud tape as a service) instead of the on-premise tape.

## Networking

Connectivity from the UW campus (specifically the UW Tower data center) to
downtown Seattle is provided via redundant Juniper MX480 routers at 100 Gbps.
From there, outbound links to major Research and Education (R&E) networks is
established (e.g., Pacific Wave, Starlight, Internet2). From the UW Seattle
campus we are connected to our sister campuses (UW Bothell and UW Tacoma) via 10
Gbps links. Since the initial inception of the campus network roadmap
demonstrated above in 2015, the campus and research networks have both merged
into the Science DMZ.

## General technology services

Aside from research computing services, UW-IT also offers managed servers (i.e.,
Infrastructure-as-a-Service or IaaS) for general use (including research) if
they do not neatly fall into any of the existing platforms. These are virtual
machines (VMs) competitively priced with public cloud offerings run on top of
OpenStack managed layer on bare metal hardware in our data centers. To help
navigate all the infrastructure options, UW-IT provides research computing
consulting services where personnel meet with individual researchers, labs, and
groups to tailor a platform to the needs of the task at hand whether on
on-premise HPC, IaaS, or the commercial cloud. UW Identity and Access Management
Services The UW maintains the UW NetID service, an enterprise credential
service. UW NetIDs are used for authentication, accounts, e-mail usernames, and
other computing purposes where unique identification is required. The UW NetID
service manages the assignment and tracking of UW NetIDs, and supports related
authentication services such as the web login service, UW Kerberos, UW Windows
Infrastructure, etc. The UW NetID service is a provider to UW’s web-single sign
on (SSO) service, which uses the Shibboleth federated identity solution.
Shibboleth provides web authentication based on industry standards for federated
single sign-on between organizations. It is based on SAML (Security Assertion
Markup Language) standard published by OASIS. UW is a member of the InCommon
Federation, which links US universities and service providers to provide
interoperable authentication for a wide variety of web-based applications. UW is
both an InCommon identity provider (IP) and service provider (SP). Software and
Licensing UW-IT provides installation and support for Jupyter Notebooks, Visual
Studio Code, Rstudio, and many other popular open-source tools via the NSF
funded OpenOnDemand portal project. We pay for Intel Parallel Studio license for
access to the optimized Intel compiler and supporting software to take advantage
of Intel specific processor extensions. Researchers also have access to Matlab
and Mathematica licenses upon request in our cluster computing environment.
Other scientific software requiring licenses are up to the end user to “bring
your own” but the research computing team provides assistance to run these on
UW-IT platforms. This includes compiling on bare-metal and presenting using
either the modules environment or LMOD and researcher training and education
around the use of containerization (e.g., Singularity, Docker). Security The
facilities that house research computing managed hardware are staffed 24/7 with
a security team that requires university badge access to be logged. All
non-university personnel are required to be sponsored and continuously escorted.
Sensitive areas require further multi-factor authentication (MFA) as badge
access and secure PIN for a personnel trap room and constant security video
monitoring. All the research computing hardware is provisioned using a Software
Defined Infrastructure (SDI) or cloud native first approach. Configuration
management is at the heart of the operation and allows for security,
auditability, and reproducibility. Software Defined Storage (SDS) allow us to
support a multi-tenant environment with differing levels of security including
from basic science to clinical data and export-controlled software while
enabling inter-institutional research collaboration to proceed with little
friction. UW use of Software Defined Networking (SDN) allows the most secure
systems to be accessed via the university F5 Virtual Private Network (VPN) and
segmenting those systems from those that require less strict security. The
baseline security profile for systems exposed to the internet require MFA with
password and either DUO or security FOB. The research systems undergo regular
security audits and policy review with the university information security
office that including penetration testing and logging alerts.
