echo " Clone Device Trees at Specific Places , This script will execute in 5 seconds "

echo " Default Build Target is Lineage"

. build/envsetup.sh && lunch lineage_RMX2151-userdebug && mka bacon -j8 | tee "log.txt"
