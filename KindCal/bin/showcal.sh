#!/bin/bash

curl -o src.jpg http://192.168.1.100:8888/Grayoutput.jpg

sleep 1
eips -c
eips -g src.jpg [-f]