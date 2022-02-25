# LVGL for Raspberry pi with official 7" display

[LVGL](https://github.com/lvgl)  

target is a Raspberry pi 3B+ with the official 7" display mounted  

framebuffer is at /dev/fb0  
touch is expected at /dev/input/event0  


# cloning & building
```
$ git clone --recursive https://github.com/JefkeB/lvgl_rpi_framebuffer.git  
in the cloned directory  
$ mkdir build  
$ cd build  
$ cmake ..  
$ make  
```
