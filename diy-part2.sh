#!/bin/bash

cd openwrt

echo "Add PassWall2 feeds"

sed -i '/passwall/d' feeds.conf.default

echo "src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git" >> feeds.conf.default

echo "src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2.git" >> feeds.conf.default
