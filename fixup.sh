echo "Generating Hotfix"
cd frameworks/base && wget https://github.com/LineageOS/android_frameworks_base/commit/4d3f23e48452eaae2f82c3e17a4c2cf8bb44c480.patch && git am *.patch && cd ../..
echo "Hotfix Generated"
