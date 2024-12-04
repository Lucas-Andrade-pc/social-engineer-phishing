FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y git python3-pip

RUN git config --global user.name "setoolkit" \
    && git config --global user.email "setoolkit@setoolkit.com"

RUN git clone --depth=1 https://github.com/trustedsec/social-engineer-toolkit.git

WORKDIR /social-engineer-toolkit

RUN pip3 install -r requirements.txt --break-system-packages

RUN python3 setup.py 

ENTRYPOINT [ "./setoolkit" ]