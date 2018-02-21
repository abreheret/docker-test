FROM ubuntu:14.04
LABEL maintainer="abreheret@gmail.com"

# Install required packages
RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      wget \
      nano \
      git \
      gcc \
      freeglut3-dev \
      g++ \
      make \
      libopencv-dev \
      software-properties-common

# Install cmake
RUN sudo wget https://cmake.org/files/v3.11/cmake-3.11.0-rc1-Linux-x86_64.sh \
    && sudo chmod +x cmake-3.11.0-rc1-Linux-x86_64.sh \
    && sudo ./cmake-3.11.0-rc1-Linux-x86_64.sh --skip-license -yg
      
# Install Qt5.9
RUN sudo apt-add-repository --yes ppa:beineri/opt-qt591-trusty && sudo apt-get update -y && sudo apt-get install -qq qt59base qt59script qt59tools && export CMAKE_PREFIX_PATH=/opt/qt59

# PixelAnnotationTool Script to build
COPY build_pat.sh build_pat.sh
RUN chmod u+rwx ./build_pat.sh
CMD ["./build_pat.sh"]



