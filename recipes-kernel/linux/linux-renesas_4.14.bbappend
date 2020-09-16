FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.14:"

SRC_URI += " \
	file://0001-Add-DRIF-support-to-Ebisu-4D.patch \
"

SRC_URI_append += " \
	file://sdr.cfg \
"

KERNEL_DEVICETREE_append += " \
	renesas/r8a77990-ebisu-4d-drif01.dtb \
	renesas/r8a77990-ebisu-4d-drif23.dtb \
"
