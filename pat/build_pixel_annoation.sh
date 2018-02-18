# sudo apt -y remove cmake
# sudo wget https://cmake.org/files/v3.11/cmake-3.11.0-rc1-Linux-x86_64.sh
# sudo chmod +x cmake-3.11.0-rc1-Linux-x86_64.sh
# sudo ./cmake-3.11.0-rc1-Linux-x86_64.sh --skip-license

git clone https://github.com/abreheret/PixelAnnotationTool.git
cd PixelAnnotationTool/scripts_to_build
mkdir build
cd build
cmake ../.. -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release

## rikorose/gcc-cmake
# docker run -ti --rm rikorose/gcc-cmake sh
# docker run -ti --rm ubuntu-upstart:latest sh
# DEBIAN_FRONTEND=noninteractive apt-get install -yq software-properties-common
# apt-get install -yq libopencv-dev

## bash
# apk update
# apk add gcc
# apk add make
# apk add cmake
# apk add qit
# apk add qt
# cd home
# git clone https://github.com/abreheret/PixelAnnotationTool.git
# cd PixelAnnotationTool/scripts_to_build


