## Building

Build with:

./compile.sh BOARD=sunvellt95zplus BRANCH=edge RELEASE=sid BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no DESKTOP_ENVIRONMENT=xfce DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base DESKTOP_APPGROUPS_SELECTED="browsers editors email multimedia" COMPRESS_OUTPUTIMAGE=sha,gpg,img BUILD_KSRC=no USE_CCACHE=yes EXPERT="yes"

## Additional information
- [Debian documentation](https://www.debian.org/doc/),
- [Debian support](https://www.debian.org/support),
- [Build parameters and advanced build options](https://docs.armbian.com/Developer-Guide_Build-Options/),
- [Make use of user defined configurations](https://docs.armbian.com/Developer-Guide_User-Configurations/),
- [Docker](https://docs.armbian.com/Developer-Guide_Building-with-Docker/) and [Vagrant](https://docs.armbian.com/Developer-Guide_Using-Vagrant/) building guides,
- Engage in [Armbian build framework forums](https://forum.armbian.com/forum/4-development/),
- Check [Jira project management application](https://armbian.atlassian.net/browse/AR) status,
- Make use of [central project search engine](https://www.armbian.com/search),
- Browse [IRC channel logs](http://irc.armbian.com) or interact at #armbian on [Libera](https://libera.chat/).

<p align=right><a href=#table-of-contents>⇧</a></p>

## Build tools overview

```text
├── cache                                Work / cache directory
│   ├── rootfs                           Compressed vanilla Debian and Ubuntu rootfilesystem cache
│   ├── sources                          Kernel, u-boot and various drivers sources. Mainly C code
│   ├── toolchains                       External cross compilers from Linaro™ or ARM™
├── config                               Packages repository configurations
│   ├── targets.conf                     Board build target configuration
│   ├── boards                           Board configurations
│   ├── bootenv                          Initial boot loaders environments per family
│   ├── bootscripts                      Initial Boot loaders scripts per family
│   ├── kernel                           Kernel build configurations per family
│   ├── sources                          Kernel and u-boot sources locations and scripts
│   ├── templates                        User configuration templates which populate userpatches
│   └── torrents                         External compiler and rootfs cache torrents
├── lib                                  Main build tools libraries
├── output                               Build artifact
│   └── deb                              Deb packages
│   └── images                           Bootable images - RAW or compressed
│   └── debug                            Patch and build logs
│   └── config                           Kernel configuration export location
│   └── patch                            Created patches location
├── packages                             Support scripts, binary blobs, packages
│   ├── blobs                            Wallpapers, various configs, closed source bootloaders
│   ├── bsp                              Scripts and configs overlay for rootfs
│   └── extras-buildpkgs                 Optional compilation and packaging engine
├── patch                                Collection of patches
│   ├── atf                              ARM trusted firmware
│   ├── kernel                           Linux kernel patches
|   |   └── family-branch                Per kernel family and branch
│   ├── misc                             Linux kernel packaging patches
│   └── u-boot                           Universal boot loader patches
|       ├── u-boot-board                 For specific board
|       └── u-boot-family                For entire kernel family
└── userpatches                          User: configuration patching area
    ├── lib.config                       User: tools common config/override file
    ├── config-default.conf              User: default user config file
    ├── customize-image.sh               User: script will execute just before closing the image
    ├── atf                              User: ARM trusted firmware
    ├── kernel                           User: Linux kernel per kernel family
    ├── misc                             User: various
    └── u-boot                           User: universal boot loader patches
```

<p align=right><a href=#table-of-contents>⇧</a></p>


