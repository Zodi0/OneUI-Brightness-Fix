# OneUI Brightness Fix 📱

A simple Magisk/KernelSU module that fixes brightness glitches on OneUI Ports (especially for devices with aftermarket displays).

## ⚡ Features
- Automatically disables "Extra Brightness" / Custom Brightness Levels at boot.
- Fixes screen flickering or black screen issues caused by high brightness levels.
- Lightweight script (`service.sh`), 0% battery drain.

## 📥 Download
[**Download Latest Version**](https://github.com/Zodi0/OneUI-Brightness-Fix/releases/latest)

## 🛠 Installation
1. Download the `.zip` file from the releases page.
2. Open Magisk / KernelSU / APatch.
3. Go to **Modules** -> **Install from Storage**.
4. Select the zip file and Reboot.

## 🐛 How it works
It executes the following command 10 seconds after boot:
```bash
echo 0 > /sys/class/lcd/panel/custom_brightness_lvl_enable
