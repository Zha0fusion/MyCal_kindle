#!/bin/sh

# Step 1: 杀掉 crond
killall crond 2>/dev/null

# Step 2: 启动 Wi-Fi
initctl start wifid


# Step 4: 检查 crond 是否已关闭
if ! pidof crond > /dev/null; then
    eips 20 2 -h "stop service success"
fi
