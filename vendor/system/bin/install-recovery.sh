#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15765504 f7ceca5bbe022a3b61ed75dc09947c309a147ee8 9775104 7c399ab1ba4e1b517cd60bfc3d9d62f75ac529a2
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:15765504:f7ceca5bbe022a3b61ed75dc09947c309a147ee8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9775104:7c399ab1ba4e1b517cd60bfc3d9d62f75ac529a2 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery f7ceca5bbe022a3b61ed75dc09947c309a147ee8 15765504 7c399ab1ba4e1b517cd60bfc3d9d62f75ac529a2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
