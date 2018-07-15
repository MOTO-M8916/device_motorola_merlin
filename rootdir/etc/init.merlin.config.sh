#!/vendor/bin/sh

# Copyright (c) 2018 Alberto97
#
# Device configuration for merlin variants
#
PATH=/sbin:/vendor/sbin:/vendor/bin:/vendor/xbin
export PATH

sku=`getprop ro.boot.hardware.sku`

set_config_props ()
{
    case $sku in
        # XT1556
        XT1556 )
            setprop ro.build.product merlin_retail

            setprop ro.gsm.data_retry_config default_randomization=2000,max_retries=infinite,1000,1000,80000,125000,485000,905000
            setprop persist.radio.process_sups_ind 1
        ;;
        # XT1557
        XT1557 )
            setprop ro.build.product merlin_retasia

        ;;
    esac
}

# Main
set_config_props

return 0
