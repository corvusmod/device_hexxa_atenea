#!/bin/bash
cd ../../../../external/sepolicy
patch -p1 < ../../device/hexxa/fenix/patches/fenix_external_sepolicy.patch
cd ../../frameworks/av
patch -p1 < ../../device/hexxa/fenix/patches/fenix_frameworks_av.patch
cd ../../frameworks/base
patch -p1 < ../../device/hexxa/fenix/patches/fenix_frameworks_base.patch
cd ../../frameworks/opt/telephony/
patch -p1 < ../../../device/hexxa/fenix/patches/fenix_frameworks_opt_telephony.patch
cd ../../../hardware/libhardware
patch -p1 < ../../device/hexxa/fenix/patches/fenix_hardware_libhardware.patch
cd ../../hardware/libhardware_legacy
patch -p1 < ../../device/hexxa/fenix/patches/fenix_hardware_libhardware_legacy.patch
cd ../../packages/apps/Settings
patch -p1 < ../../../device/hexxa/fenix/patches/fenix_packages_apps_settings.patch
cp ../../../device/hexxa/fenix/patches/ic_barcodescanner.png res/drawable-xhdpi
cp ../../../device/hexxa/fenix/patches/ic_fingerprint.png res/drawable-xhdpi
cd ../../../packages/services/Telephony
patch -p1 < ../../../device/hexxa/fenix/patches/fenix_packages_services_telephony.patch
cd ../../../system/core
patch -p1 < ../../device/hexxa/fenix/patches/fenix_system_core.patch
cd ../../system/netd
patch -p1 < ../../device/hexxa/fenix/patches/fenix_system_netd.patch
cd ../..
echo Patches Applied Successfully!
