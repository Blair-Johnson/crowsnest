#FROM nvcr.io/nvidia/l4t-base:r32.3.1
FROM nvcr.io/nvidia/l4t-ml:r32.4.4-py3

WORKDIR /app

COPY . .

RUN apt-get update \
    && apt-get install apt-utils \
    && apt-get install -y cmake \
    && apt-get install -y python3-pip \
    && apt-get install -y python3-dev \
    && apt-get install -y python3-distutils \
    && apt-get install -y git \
    && apt-get install -y vim \
    && pip3 install --upgrade https://developer.download.nvidia.com/compute/redist/jp/v44/tensorflow/tensorflow-2.3.0+nv20.9-cp36-cp36m-linux_aarch64.whl
    #&& pip3 install cython \
    #&& pip3 install https://developer.download.nvidia.com/compute/redist/jp/v43/tensorflow/tensorflow-2.1.0+nv20.3-cp36-cp36m-linux_aarch64.whl \
    #&& pip3 install -r requirements.txt

EXPOSE 8080

CMD ["/bin/bash"]
