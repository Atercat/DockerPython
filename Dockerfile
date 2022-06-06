FROM ubuntu:14.04
ADD app.py app.py
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt install -y -q python-all python-pip
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD app.py