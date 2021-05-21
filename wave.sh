echo " Cleaning R Hals"
rm -rf hardware/qcom-caf/msm8996/display && rm -rf hardware/qcom-caf/msm8996/audio && rm -rf hardware/qcom-caf/msm8996/media
echo "Cloning msm8996 Q hals"
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media
echo "Done !"
