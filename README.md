# Meta DRIF Platforms

This meta-layer adds DRIF support for the following platforms to the Yocto
BSP v3.21.0 release:
* **Ebisu-4D** board.

Please refer to Section [Hardware Requirements](#hardware-requirements) for
specific information on the hardware.

Section [Configuration](#configuration) explains how to use the meta-layer,
while Section [Dependencies](#dependencies) lists the meta-layer(s) this
meta-layer depends on.

## Hardware Requirements

### Ebisu-4D

The Ebisu-4D platform supported by this meta-layer requires HW modifications,
and it also requires a Maxim J5 expansion board connected to **CN27 EXIO\_B**
for the DRIF interfaces to be functional.

The Maxim J5 expansion board comes with two tuners, and the R-Car E3 SoC (the
SoC powering Ebisu-4D) comes with 4 DRIF interfaces, this means that only
two DRIF interfaces can be used at the same time.

This meta-layer provides a list of hardware modifications that can be applied
to two different Ebisu-4D board in order to get:
* *Ebisu-4D with DRIF0 and DRIF1 support*, and
* *Ebisu-4D with DRIF2 and DRIF3 support*.

The document with the list of hardware modifications can be found under:
[E3\_DRIF\_Hardware\_Modifications.pptx](docs/E3\_DRIF\_Hardware\_Modifications.pptx).

## Dependencies

This layer depends on **meta-extra-drif-support**.

Please refer to **meta-extra-drif-support/README.md**
for the full list of dependencies.

## Configuration

In order to make use of the work contained in this meta-layer
simply add **meta-drif-platforms** to *BBLAYERS* from within
your *bblayers.conf*.
