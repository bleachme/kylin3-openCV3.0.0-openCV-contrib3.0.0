2019.12.19
人脸识别OpenCV源码编译

VM 版本： 15.5.0
OpenCV源码：3.4.6
sys:  麒麟系统  (root  root.2018)  登录角色： sysadm
    系统安装：  cmake2.8.12 
                openCV 3.4.6
                openCV contrib 3.4.6
转换文件intltool工具:    http://ftp.gnome.org/pub/gnome/sources/intltool/   


源码下载：  https://github.com/opencv


安装： https://www.cnblogs.com/needybeerlxy/p/8979238.html





libdc1394-22-dev
sudo apt-get update

（1） 安装相关包

安装前的必备包

    sudo apt-get install build-essential 

    sudo apt-get install cmake git g++

安装依赖包

    sudo apt-get install libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libv4l-dev liblapacke-dev
    sudo apt-get install checkinstall yasm libxine2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libfaac-dev libmp3lame-dev libtheora-dev
    sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev libavresample-dev x264 v4l-utils

处理图像所需的包

    sudo apt-get install libtbb2 libtbb-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev

处理视频所需包

    sudo apt-get install libxvidcore-dev libx264-dev

opencv功能优化

    sudo apt-get install libatlas-base-dev gfortran 

部分依赖包

    sudo apt-get install libopencv-dev qt4-qmake libqglviewer-dev libsuitesparse-dev
    sudo apt-get install python-dev python-numpy

可选依赖

    sudo apt-get install libprotobuf-dev protobuf-compiler
    sudo apt-get install libgoogle-glog-dev libgflags-dev
    sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen


（2）安装完成后，把contrib文件夹放入opencv目录下，并且创建build文件夹；

手动下载 ippicv_2019_lnx_intel64_general_20180723.tgz，放到/home/joanna/software/文件夹下，并修改opencv/3rdparty/ippicv/ippicv.cmake：

    "https://raw.githubusercontent.com/opencv/opencv_3rdparty/${IPPICV_COMMIT}/ippicv/"
    修改为：
    "file:/home/joanna/software/" 


（4）或者 命令行编译opencv-contrib源码

    #
    cd build  
    #
    sudo cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/home/joanna/software/opencv-3.4.6/opencv_contrib-3.4.6/modules/ .. 

在cmake成功之后，就可以在build文件下make了：

    sudo make -j8 #8线程编译

    sudo make install

（5）链接库共享
编译安装完毕之后，为了让你的链接库被系统共享，让编译器发现，需要执行管理命令ldconfig：

sudo ldconfig -v 



关键是cmake的代码，因为各位ubuntu的系统配置不尽相同，因此可以使用下列比较通用的代码：

cmake -D CMAKE_BUILD_TYPE=RELEASE \

    -D CMAKE_INSTALL_PREFIX=/usr/local/ \

    -D INSTALL_PYTHON_EXAMPLES=ON \

    -D INSTALL_C_EXAMPLES=ON \

    -D PYTHON_EXCUTABLE=/usr/bin/python \

    -D OPENCV_EXTRA_MODULES_PATH=/home/lxy/opencv/opencv-3.4.1/opencv_contrib-3.4.1/modules \

    -D WITH_CUDA=OFF \

    -D WITH_CUFFT=OFF \

    -D WITH_CUBLAS=OFF \

    -D WITH_TBB=ON \

    -D WITH_V4L=ON \

    -D WITH_QT=ON \

    -D WITH_GTK=ON \

    -D WITH_OPENGL=ON \

-D BUILD_EXAMPLES=ON ..









cmake -D WITH_IPP=OFF \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_ENABLE_NONFREE=ON \
      -D ENABLE_CXX11=OFF \
      -D OPENCV_EXTRA_MODULES_PATH=/home/code/opencv-3.4.6/opencv_contrib-3.4.6/modules \
      -D INSTALL_PYTHON_EXAMPLES=OFF \
      -D INSTALL_C_EXAMPLES=OFF \
      -D PYTHON_EXCUTABLE=/usr/bin/python \
      -D WITH_CUDA=OFF \
      -D WITH_CUFFT=OFF \
      -D WITH_CUBLAS=OFF \
      -D WITH_TBB=OFF \
      -D WITH_V4L=OFF \
      -D WITH_QT=OFF \
      -D WITH_GTK=OFF \
      -D WITH_OPENGL=OFF \
      -D BUILD_EXAMPLES=OFF ..


sudo make -j8 #8线程编译
sudo make install




/*********************************************************************************/
编译openCV3.0.0版本：

cmake -D WITH_IPP=OFF \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_ENABLE_NONFREE=ON \
      -D ENABLE_CXX11=OFF \
      -D OPENCV_EXTRA_MODULES_PATH=/home/code/opencv/opencv-3.0.0/opencv_contrib-3.0.0/modules \
      -D INSTALL_PYTHON_EXAMPLES=OFF \
      -D INSTALL_C_EXAMPLES=OFF \
      -D PYTHON_EXCUTABLE=/usr/bin/python \
      -D WITH_CUDA=OFF \
      -D WITH_CUFFT=OFF \
      -D WITH_CUBLAS=OFF \
      -D WITH_TBB=OFF \
      -D WITH_V4L=OFF \
      -D WITH_QT=OFF \
      -D WITH_GTK=OFF \
      -D WITH_OPENGL=OFF \
      -D BUILD_EXAMPLES=OFF ..

make
make install

1.home/code/opencv/opencv-3.0.0/modules/imgproc/src/hough.cpp 修改编码方式utf-8
2./home/code/opencv/opencv-3.0.0/modules/core/src/parallel.cpp  修改线程函数的命名空间
    参考  https://blog.csdn.net/lyk_ffl/article/details/47683549
3. pow函数参数转换为float：
        /home/code/opencv/opencv-3.0.0/opencv_contrib-3.0.0/modules/line_descriptor/src/LSDDetector.cpp
        /home/code/opencv/opencv-3.0.0/opencv_contrib-3.0.0/modules/line_descriptor/perf/perf_matching.cpp
        /home/code/opencv/opencv-3.0.0/opencv_contrib-3.0.0/modules/line_descriptor/test/test_matcher_regression.cpp
4. /home/code/opencv/opencv-3.0.0/opencv_contrib-3.0.0/modules/xfeatures2d/src/freak.cpp:444: 错误：在类 ‘GENERAL_REGS’ 中找不到可舍出的寄存器    
    与编译优化参数有关，找到编译freak.cpp的编译控制文件
    flags.make与link.txt，将
    编译优化选项从
    -O3 改为
    -O0
    
    /home/code/opencv/opencv-3.0.0/build/modules/xfeatures2d/CMakeFiles/opencv_xfeatures2d.dir/flags.make, link.txt
    
    
[100%] Built target opencv_annotation    

测试Python程序：
#!/usr/bin/python

import numpy
import cv2

if __name__ = '__main__':
    img = cv2.imread('', 1)
    
    cv2.imshow('image', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()


测试C++程序：


#include <stdio.h>
#include <opencv2/opencv.hpp>
using namespace cv;
int main(int argc, char** argv )
{
    if ( argc != 2 )
    {
        printf("usage: DisplayImage.out <Image_Path>\n");
        return -1;
    }
    Mat image;
    image = imread( argv[1], 1 );
    if ( !image.data )
    {
        printf("No image data \n");
        return -1;
    }
    namedWindow("Display Image", WINDOW_AUTOSIZE );
    imshow("Display Image", image);
    waitKey(0);
    return 0;
}



gedit CMakeLists.txt

cmake_minimum_required(VERSION 2.8)
project( DisplayImage )
find_package( OpenCV REQUIRED )
add_executable( DisplayImage DisplayImage.cpp )
target_link_libraries( DisplayImage ${OpenCV_LIBS} )

cmake .
make
./DisplayImage a.jpg



USB 取视频demo：
https://blog.csdn.net/hejingkui/article/details/80052964
https://www.cnblogs.com/blueroses/p/7930120.html

openCV读取、转换、保存图片：
https://blog.csdn.net/u012372584/article/details/89152396

////////////////////////////////////////////////////////////////////////
2019.12.24

OpenCV Error: Unspecified error (The function is not implemented. Rebuild the library with Windows, GTK+ 2.x or Carbon support.

编译开关问题,GTK 未编译
重新编译

解决方法：
除了提前安装 install libgtk2.0-dev and pkg-config 这两个包还在 还需要
在cmake时加入-D WITH_QT=ON 选项
WITH_GTK = ON 
WITH_GTK_2_X =ON

重新编译安装即可


卸载OpenCV3.0.0：
https://blog.csdn.net/haoqimao_hard/article/details/82049565




//////////////////////////////////////////////////////////////////////
1.先测摄像头是否可用（麒麟）
电脑USB为3.0接口。需要把虚拟机的设置改为兼容USB3.0，但是提示要是用USB3.0内核版本必须3.2及以上。


 






