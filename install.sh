#!/bin/bash
cp /home/carlos/Projects/Personal/xfce-panel-plugin-hello/build/libxfce4-panel-plugin-hello.so /usr/lib/x86_64-linux-gnu/xfce4/panel/plugins/libxfce4-panel-plugin-hello.so
chmod 644 /usr/lib/x86_64-linux-gnu/xfce4/panel/plugins/libxfce4-panel-plugin-hello.so
cp /home/carlos/Projects/Personal/xfce-panel-plugin-hello/src/xfce4-panel-plugin-hello.desktop.in /usr/share/xfce4/panel/plugins/xfce4-panel-plugin-hello.desktop
chmod 644 /usr/share/xfce4/panel/plugins/xfce4-panel-plugin-hello.desktop
