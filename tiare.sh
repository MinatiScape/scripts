git clone https://github.com/Redmi-Go/android_device_xiaomi_msm8937-common device/xiaomi/msm8937-common
git clone https://github.com/Redmi-Go/proprietary_vendor_xiaomi_msm8937-common vendor/xiaomi/msm8937-common
git clone https://github.com/Redmi-Go/android_device_xiaomi_tiare device/xiaomi/tiare
git clone https://github.com/Redmi-Go/proprietary_vendor_xiaomi_tiare vendor/xiaomi/tiare
git clone --depth=1 https://github.com/Redmi-Go/android_kernel_xiaomi_tiare kernel/xiaomi/msm8937
. build/envsetup.sh && export CIPHER_OFFICIAL=true && lunch lineage_tiare-userdebug && mka bacon -j8
