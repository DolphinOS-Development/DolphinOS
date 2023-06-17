#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="dolphinos-nvidia"
iso_label="DOLPHINOS_NVIDIA_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m%d%H%M)"
iso_publisher="DolphinOS <https://github.com/DolphinOS-Development>"
iso_application="DolphinOS installation ISO NVIDIA Version"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d.%H.%M)"
install_dir="dolphinos"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
