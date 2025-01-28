FROM tensorflow/tensorflow:2.8.4-gpu-jupyter

RUN apt-get update && \
    apt-get install -y ffmpeg libsm6 libxext6

RUN cd / && git clone git@github.com:VPetukhov/SCS.git
RUN cd /SCS && \
    pip install -r requirements.txt

RUN cd /SCS && \
    python setup.py install

CMD ["/bin/bash"]