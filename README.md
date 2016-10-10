----Thanks for ferhung, fire855 & superdragonpt, who are contributing to the working CyanogenMod of MTK hardware(MT6592&MT6582).---

---- Also thanks to all developers that help me building this sources for Atenea/D5/whatever. Blerfont, Jose, Visionary, etc... ---

This is a device tree for Hexxa Atenea or No1 D5 or any other clone of this one, which is based on MT6572 SoC.
# Build

* init
  Sync CyanogenMod source modified by ferhung:

        # repo init -u git://github.com/ferhung/android.git -b cm-12.1

        # repo sync

	# git clone this repo to device/hexa/atenea and the vendor repo to the needed place.

* full build
        
        # source build/envsetup.sh

        # lunch cm_atenea and mka bacon
