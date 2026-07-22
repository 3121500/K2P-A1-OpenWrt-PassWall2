#!/bin/bash

# 添加 PassWall2 软件源
echo "Add PassWall2 feeds"

grep -qxF "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git" feeds.conf.default || \
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git" >> feeds.conf.default

grep -qxF "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git" feeds.conf.default || \
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git" >> feeds.conf.default
