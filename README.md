# Device Configuration For Realme 3/3i
Realme 3/3i (RMX1821, RMX1823, RMX1825, RMX1827) are mid-range smartphones launched by Realme in March and July of 2019 respectively

![Realme 3/3i](https://fdn2.gsmarena.com/vv/pics/realme/realme-3-2.jpg "Realme 3/3i")

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | Octa-core 2.0/2.4 GHz MT6771/MT6771T Mediatek Helio P60/P70
GPU     | Mali-G72 MP3
Memory  | 3/4 GB RAM
Shipped Android Version | 9.0 ColorOS, upgraded to 10.0 RealmeUI
Storage | 32GB/64GB
Battery | 4230 mAh
Display | 6.22" 720 x 1520 px PPI 271
Rear Camera | 13 MP, f/1.8, 1/3.1", 1.12µm, PDAF and 2 MP (depth)
Front Camera | 13 MP, f/2.0, (wide), 1/3.1", 1.12µm

---

This device tree can be used to build Pixel Experience Android12 for Realme 3/3i devices with RealmeUI vendor

## Applying [patches](https://github.com/Archsploit/device_realme_RMX1821/tree/twelve/patches) in their respective directories of ROM source is mandatory.

## For IMS : clone [vendor_realme_RMX1821-ims](https://github.com/Archsploit/vendor_realme_RMX1821-ims) into vendor/realme/RMX1821-ims
```
git clone https://github.com/Archsploit/vendor_realme_RMX1821-ims -b twelve vendor/realme/RMX1821-ims
```
## For Reame Parts : clone [android_packages_apps_RealmeParts](https://github.com/Archsploit/android_packages_apps_RealmeParts) into packages/apps/RealmeParts
```
git clone https://github.com/Archsploit/android_packages_apps_RealmeParts -b twelve packages/apps/RealmeParts
```
