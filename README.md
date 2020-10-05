# Meta DRIF Platforms

This meta-layer adds DRIF support for the following platforms to the Yocto
BSP v3.21.0 release:
* Ebisu-4D
* M3-N Salvator-XS
* M3-W Salvator-XS

Please refer to Section [Hardware Requirements](#hardware-requirements) for
specific information on the hardware.

Section [Configuration](#configuration) explains how to use the meta-layer,
while Section [Dependencies](#dependencies) lists the meta-layer(s) this
meta-layer depends on.

## Hardware Requirements

### E3 Ebisu-4D

The E3 Ebisu-4D platform supported by this meta-layer requires HW modifications,
and it also requires a Maxim J5 expansion board connected to **CN27 EXIO\_B**
for the DRIF interfaces to be functional.

The Maxim J5 expansion board comes with two tuners, and the R-Car E3 SoC (the
SoC powering E3 Ebisu-4D) comes with 4 DRIF interfaces, this means that only
two DRIF interfaces can be used at the same time.

This meta-layer provides a list of hardware modifications that can be applied
to two different Ebisu-4D board in order to get:
* *Ebisu-4D with DRIF0 and DRIF1 support*, and
* *Ebisu-4D with DRIF2 and DRIF3 support*.

The document with the list of hardware modifications can be found under:
[E3\_DRIF\_Hardware\_Modifications.pptx](docs/E3\_DRIF\_Hardware\_Modifications.pptx).

### M3-N Salvator-XS

The M3-N Salvator-XS platform supported by this meta-layer requires HW
modifications, and it also requires a Maxim J5 expansion board connected to
**CN27 EXIO\_B** for the DRIF interfaces to be functional.

The Maxim J5 expansion board comes with two tuners, and the R-Car M3-N SoC (the
SoC powering M3-N Salvator-X) comes with 4 DRIF interfaces, this means that
only two DRIF interfaces can be used at the same time.

The BSP from this meta-layer adds support for four DRIF oriented device trees:
* renesas/r8a77965-salvator-xs-drif01.dts
* renesas/r8a77965-salvator-xs-drif23.dts
* renesas/r8a77965-salvator-x-drif01.dts
* renesas/r8a77965-salvator-x-drif23.dts

*renesas/r8a77965-salvator-xs-drif01.dts* adds DRIF0 and DRIF1 support to
M3-N Salvator-XS + Maxim J5 expansion board.
M3-N Salvator-XS needs to be modified to allow for the relevant wires to reach
the relevant interfaces.

In a similar fashion, *renesas/r8a77965-salvator-xs-drif23.dts* adds DRIF2 and
DRIF3 support to M3-N Salvator-XS + Maxim J5 expansion board.
The modifications for M3-N Salvator-XS required to support DRIF2 and DRIF3 are
very similar to the ones required to add DRIF0 and DRIF1 support, as DRIF3 is
pin-to-pin compatible with DRIF1, and DRIF2 is *almost* pin-to-pin compatible
with DRIF0, the only difference is that DRIF2 data lines are crossed w.r.t. the
data lines of DRIF0.

*renesas/r8a77965-salvator-x-drif01.dts*, similarly to
*renesas/r8a77965-salvator-xs-drif01.dts*, adds DRIF0 and DRIF1 support to
M3-N Salvator-X.

*renesas/r8a77965-salvator-x-drif23.dts*, similarly to
*renesas/r8a77965-salvator-xs-drif23.dts*, adds DRIF2 and DRIF3 support to
M3-N Salvator-X.

The document with the list of hardware modifications necessary for
renesas/r8a77965-salvator-xs-drif01.dts and
renesas/r8a77965-salvator-x-drif01.dts to work can be found here:
[Salvator-XS\_DRIF\_Hardware\_Modifications.pptx](docs/Salvator-XS\_DRIF\_Hardware\_Modifications.pptx).

### M3-W Salvator-XS

In order to get M3-W Salvator-XS to showcase DRIF support, the platform needs
some hardware modifications and it needs to be connected to Maxim J5 expansion
board via connector **CN27 EXIO\_B**,
like for the M3-N Salvator-X[S] case. More specifically, the hardware
modifications required by M3-W Salvator-XS are the same as the ones required by
M3-N Salvator-X[S], and the details can be found here:
[Salvator-XS\_DRIF\_Hardware\_Modifications.pptx](docs/Salvator-XS\_DRIF\_Hardware\_Modifications.pptx).

This meta-layer adds four new device trees:
* renesas/r8a7796-salvator-xs-drif01.dts
* renesas/r8a7796-salvator-xs-drif23.dts
* renesas/r8a7796-salvator-x-drif01.dts
* renesas/r8a7796-salvator-x-drif23.dts

The four new device trees cover the same range of possibilities as the device
trees for M3-N Salvator-X[S], only this time it's for M3-W Salvator-X[S].

## Dependencies

This layer depends on **meta-extra-drif-support**.

Please refer to **meta-extra-drif-support/README.md**
for the full list of dependencies.

## Configuration

In order to make use of the work contained in this meta-layer
simply add **meta-drif-platforms** to *BBLAYERS* from within
your *bblayers.conf*.
