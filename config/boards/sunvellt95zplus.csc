# Amlogic S912 octa core 2Gb RAM SoC eMMC
BOARD_NAME="Sunvell T95Z Plus"
BOARDFAMILY="sunvellt95zplus"
BOOTCONFIG="khadas-vim2_defconfig"
KERNEL_TARGET="current,edge"
FULL_DESKTOP="yes"
BOOT_LOGO="desktop"
BOOTSIZE=128
BOOTFS_TYPE="fat"
DESKTOP_AUTOLOGIN="yes"
EXTRAWIFI="no"
KERNEL_COMPILER='aarch64-linux-gnu-'
KERNEL_USE_GCC='10'
UBOOT_COMPILER='aarch64-linux-gnu-'
UBOOT_USE_GCC='10'
PACKAGE_LIST_EXCLUDE="gcc-10-base,gcc-11-base,gcc-9-base" 