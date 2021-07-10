echo "=========================================="
echo "        Cleaning Up Disk Space            "
echo "=========================================="
rm -rf *
sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d
sudo apt-get remove account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty duplicity empathy empathy-common example-content gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut totem totem-common totem-plugins printer-driver-brlaser printer-driver-foo2zjs printer-driver-foo2zjs-common printer-driver-m2300w printer-driver-ptouch printer-driver-splix
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php*
sudo -E apt-get clean
sudo -E apt-get -qq update
sudo -E apt-get -qq install bc build-essential zip curl libstdc++6 git wget python gcc clang libssl-dev repo rsync flex curl  bison aria2
sudo curl --create-dirs -L -o /usr/local/bin/repo -O -L https://storage.googleapis.com/git-repo-downloads/repo
sudo chmod a+rx /usr/local/bin/repo
echo "=========================================="
echo "        Setting Git Configs...            "
echo "=========================================="
git config --global user.name "techyminati"
git config --global user.email "sinha.aryan03@gmail.com"
git config --global color.ui false
echo "=========================================="
echo  "  Starting Repo Init for SHRP 11          "
echo "=========================================="
repo init --depth=1 -u https://github.com/SHRP/platform_manifest_twrp_omni -b -v3_11.0
echo "=========================================="
echo "       Starting Repo Sync.............   "
echo "=========================================="
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "=========================================="
echo "       Sucessfully Synced SHRP 11.0 ....  "
echo "=========================================="
