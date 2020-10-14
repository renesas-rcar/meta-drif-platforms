FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.14:"

SRC_URI += " \
	file://0001-Add-DRIF-support-to-Ebisu-4D.patch \
	file://0002-Add-DRIF-support-to-M3-N-Salvator-X-S.patch \
	file://0003-Add-DRIF-support-to-M3-W-Salvator-X-S.patch \
	file://0004-Add-DRIF-support-to-H3-Salvator-X-S.patch \
"

SRC_URI_append += " \
	file://sdr.cfg \
"

KERNEL_DEVICETREE_append_salvator-x += " \
	renesas/r8a77965-salvator-xs-drif01.dtb \
	renesas/r8a77965-salvator-xs-drif23.dtb \
	renesas/r8a77965-salvator-x-drif01.dtb \
	renesas/r8a77965-salvator-x-drif23.dtb \
	renesas/r8a7796-salvator-xs-drif01.dtb \
	renesas/r8a7796-salvator-xs-drif23.dtb \
	renesas/r8a7796-salvator-x-drif01.dtb \
	renesas/r8a7796-salvator-x-drif23.dtb \
	renesas/r8a7795-salvator-xs-drif01.dtb \
	renesas/r8a7795-salvator-xs-drif23.dtb \
	renesas/r8a7795-salvator-x-drif01.dtb \
	renesas/r8a7795-salvator-x-drif23.dtb \
"

KERNEL_DEVICETREE_append_ebisu += " \
	renesas/r8a77990-ebisu-4d-drif01.dtb \
	renesas/r8a77990-ebisu-4d-drif23.dtb \
"
