#!/bin/bash

# 添加 PassWall2 软件源
echo "Add PassWall2 feeds"

sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' feeds.conf.default
sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' feeds.conf.default
