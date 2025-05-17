#!/bin/bash

# 拉取图像并刷新屏幕
function update_display() {
    curl -o src.jpg http://192.168.1.100:8888/Grayoutput.jpg
    sleep 1
    eips -c
    eips -g src.jpg -f
}

# 关闭 Wi-Fi
function disable_wifi() {
    initctl stop wifid
}

# 执行步骤
update_display
disable_wifi
./croncontrol   # 相对路径调用
