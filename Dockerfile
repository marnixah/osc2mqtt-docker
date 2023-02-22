FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip build-essential liblo-dev
COPY . /app
WORKDIR /app
RUN pip3 install Cython
RUN pip3 install -r requirements.txt
RUN python3 setup.py install
ENTRYPOINT ["osc2mqtt"]