#!/bin/bash

# 默认语言
sed -i 's/option lang .*/option lang zh_cn/' package/base-files/files/etc/config/luci

# 默认时区
sed -i 's/option timezone .*/option timezone CST-8/' package/base-files/files/etc/config/system

# 开启软件流量分载
mkdir -p files/etc/config

cat > files/etc/config/firewall <<EOF
config defaults
        option flow_offloading '1'
        option flow_offloading_hw '1'
EOF
