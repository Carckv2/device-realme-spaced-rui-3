# Vendor tree
https://github.com/realme-spaced-dev/android_vendor_realme.git vendor/realme
# Kernel tree
git clone https://github.com/realme-spaced-dev/kernel_realme_mt6781.git --depth=1 /realme/spaced

# frameworks/av (required for sysbta)
cd frameworks/av
git fetch https://github.com/rk134/frameworks_av.git
git cherry-pick 9c71f9a66d8b71d9bf1975f46c43c562d38dfc64
git cherry-pick 9c71f9a66d8b71d9bf1975f46c43c562d38dfc64..1f16358102caed113917071d8b58cc9d1307855b
cd ../..


# packages/modules/Bluetooth (required for sysbta)
cd packages/modules/Bluetooth
git fetch https://github.com/rk134/packages_modules_Bluetooth.git
git cherry-pick 5610e46a47583df0fa6f731dd3196fbab158a2cd
git cherry-pick b6d4693925823facd321a8a1d8ef7882f63fcc3c
git cherry-pick 5ab4518edfc2299a4c2e395420981fbb669b8f90

# Clang
cd prebuilts/clang/host/
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 clang -b android-12.1.0_r27 --depth=1
mv clang/clang-r383902 linux-x86/clang-r383902
rm -rf clang
cd ../../..

