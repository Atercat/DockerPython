FROM ubuntu:18.04
ADD app.py app.py
ADD requirements.txt requirements.txt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt install -y -q python-all python-pip
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD app.py