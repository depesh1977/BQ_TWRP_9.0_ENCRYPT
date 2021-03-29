#!/sbin/sh

# Team Hovatek Touch Fix
load_panel()
{
	insmod /sbin/sprd_vibrator.ko
    insmod /vendor/lib/modules/leds-sprd-bltc-rgb.ko
    insmod /vendor/lib/modules/sc7a20.ko
    insmod /vendor/lib/modules/sprdwl_ng.ko
    insmod /vendor/lib/modules/sprd_vibrator.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0
