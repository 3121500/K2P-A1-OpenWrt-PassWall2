#!/bin/bash

sed -i 's/option lang .*/option lang zh_cn/' package/base-files/files/etc/config/luci

sed -i 's/option timezone .*/option timezone CST-8/' package/base-files/files/etc/config/system

mkdir -p files/etc/config

cat > files/etc/config/firewall <<EOF
config defaults
        option flow_offloading '1'
        option flow_offloading_hw '1'
EOF
