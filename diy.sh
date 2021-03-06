#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

mkdir package/base-files/files/config
echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
echo "src-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default

./scripts/feeds update -a && ./scripts/feeds install -a

sed -i 's/192.168.1.1/192.168.123.99/g' package/base-files/files/bin/config_generate
