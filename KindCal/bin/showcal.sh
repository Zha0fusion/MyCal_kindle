#!/bin/bash

# 函数：拉取图片并刷新屏幕
function update_display() {
    curl -o src.jpg http://192.168.1.100:8888/Grayoutput.jpg

    sleep 1

    eips -c
    
    eips -g src.jpg [-f]
}

# Step 1: 立即执行一次
update_display

# Step 2: 每 30 分钟循环执行
while true; do
    sleep 1800  # 30分钟 = 1800秒
    update_display
done