### Moto Edge 20 Lite 5G - Recovery Tree [WIP]
![Moto](https://motorolauk.vtexassets.com/arquivos/motorola-edge-20-lite-lockup-ffffff.svg)
based on KYOTO_RETAIL_RRKS31.Q3-19-97-8

| **Prop** | **spec** |
| --- | --- |
| `Codename` | **Kyoto** |
| `Board` | **MediaTek MT6853** |
| `OS` | **Android 11** |
| `Chipset` | **Dimensity 720** |
| `CPU` | **Octa-core (2x2.0 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)** |
| `GPU` | **Mali-G57 MC3** |
| `RAM` | **8GB** |

#### How to build
```sh
git clone https://github.com/forforksake/android_device_motorola_kyoto device/motorola/kyoto -b pbrp
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh
make clobber
lunch omni_kyoto-eng && mka pbrp
```

#### Checklist / Confirmed working
- [X] bootctrl 
- [X] fastbootd (fastboot reboot fastboot from bootloader like stock) 
- [X] Device Screen Size & Margins
- [X] touchscreen
- [X] Backup to internal/microSD/USB-OTG
- [X] Restore from internal/microSD/USB-OTG
- [X] ADB
- [X] Screen Off & On - Screen Locked & Unlocked
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] reboot to system
- [ ] reboot to fastboot 
- [X] reboot to bootloader
- [ ] ~~reboot to recovery removed~~ (recovery must be selected at bootloader)
- [X] power off
- [X] all important partitions listed in mount/backup lists
- [X] battery level
- [X] temperature
- [X] encrypted backups 
- [X] USB-OTG keyboard, mouse and disks
- [X] USB mass storage export
- [X] set brightness
- [X] vibrate
- [X] screenshot
- [X] partition SD card
- [ ] decrypt /data  **In Progress**

reccomended app:
[Switch My Slot](https://github.com/gibcheesepuffs/Switch-My-Slot-Android) along with this [bootctrl masgisk module](https://github.com/roihershberg/bootctl-binary) allows for seemless switching.

#### Unlocked bootloader Required
Assuming you've unlocked bootloader, backup anything on data and userdata
```sh
adb reboot bootloader
fastboot flash boot_a/_b boot.img
fastboot reboot bootloader
```
select **recovery mode** from bootloader screen

WIP, feel free to assist - ForForkSake - CFKod @ Xdadevelopers_
