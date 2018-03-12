#!/bin/bash
cd root
export CMAKE_PREFIX_PATH=/opt/qt59
git clone https://github.com/abreheret/PixelAnnotationTool.git
mkdir build
cd build
cmake ../PixelAnnotationTool -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release
cmake --build . --config Release --target upload_file
