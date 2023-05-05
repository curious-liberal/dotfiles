#!/bin/bash
#
modprobe v4l2loopback card_label='My Fake Webcam' exclusive_caps=1
mv /dev/video0 /dev/realcam && mv /dev/video2 /dev/video0
ffmpeg -stream_loop -1 -re -i $1 -vcodec rawvideo -threads 0 -f v4l2 /dev/video0
modprobe --remove v4l2loopback
mv /dev/realcam /dev/video0
