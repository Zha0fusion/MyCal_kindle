#!/bin/sh

# 开启 Wi-Fi
initctl start wifid

# 等待联网
sleep 10

# 拉取图片并刷新屏幕
curl -o src.jpg http://192.168.1.100:8888/Grayoutput.jpg
eips -c
eips -g src.jpg -f

# 关闭 Wi-Fi
initctl stop wifid
