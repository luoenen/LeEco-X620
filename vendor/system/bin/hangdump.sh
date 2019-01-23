#! /system/bin/sh

cp /data/local/tmp/sw_coredump_dmesg.txt /sdcard/mtklog/
cp /data/local/tmp/sw_coredump_logcat.txt /sdcard/mtklog/
cp /data/local/tmp/sw_coredump_cap.png /sdcard/mtklog/
cp /data/local/tmp/sw_coredump_dumpsys.txt /sdcard/mtklog/
cp /data/local/tmp/dump.txt /sdcard/mtklog/
rm -rf /data/local/tmp/sw_coredump_dmesg.txt
rm -rf /data/local/tmp/sw_coredump_logcat.txt
rm -rf /data/local/tmp/sw_coredump_cap.png
rm -rf /data/local/tmp/sw_coredump_dumpsys.txt
rm -rf /data/local/tmp/dump.txt
