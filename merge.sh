#!/bin/bash
# 
echo "========================================"
echo "      CipherOS AOSP Tag Merge Script    "
echo "========================================"

TAG=$1

# fwb
echo "Merging FWB..."
git clone -q https://github.com/CipherOS/android_frameworks_base base
cd base
git fetch -q https://android.googlesource.com/platform/frameworks/base $TAG
git merge FETCH_HEAD -q -m "Merge tag '$TAG' into eleven"
cd ..

# soong 
echo "Merging build soong..."
git clone -q https://github.com/CipherOS/android_build_soong soong
cd soong
git fetch -q https://android.googlesource.com/platform/build/soong $TAG
git merge FETCH_HEAD -q -m "Merge tag '$TAG' into eleven"
cd ..

# frameworks/av
echo "Merging fw/av..."
git clone -q https://github.com/CipherOS/android_frameworks_av av 
cd av
git fetch -q https://android.googlesource.com/platform/frameworks/av $TAG
git merge FETCH_HEAD -q -m "Merge tag '$TAG' into eleven"
cd ..

# fw/native
git clone -q https://github.com/CipherOS/android_frameworks_native n
cd n
git fetch -q https://android.googlesource.com/platform/frameworks/native $TAG
git merge FETCH_HEAD -q -m "Merge tag '$TAG' into eleven"
cd ..

# grep fetch heads
echo "Merge done! Conflicts :"
grep -sRi "<<< HEAD" *
