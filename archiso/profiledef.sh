#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="dolphinos"
iso_label="DOLPHINOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m%d%H%M)"
iso_publisher="DolphinOS <https://github.com/DolphinOS-Development>"
iso_application="DolphinOS installation ISO"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d.%H.%M)"
install_dir="dolphinos"
buildmodes=('iso')
bootmodes=('uefi-x64.grub.esp' 'uefi-x64.grub.eltorito')
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
