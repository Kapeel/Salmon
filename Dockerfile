# Salmon 
# VERSION               0.6.1
# 

FROM      ubuntu:14.04.3 
MAINTAINER Kapeel Chougule

LABEL Description="This image is used for running Salmon RNA seq qauntification tool, This is using a Debian Binary for installation "
RUN apt-get update && apt-get install -y build-essential cmake zlib1g-dev wget python
#libhdf5-dev pkg-config liblzma-dev apt-get install libbz2-dev curl unzip

RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v0.6.0/SalmonBeta-0.6.0_DebianSqueeze.tar.gz \
&& tar -xvf SalmonBeta-0.6.0_DebianSqueeze.tar.gz \
&& mv SalmonBeta-0.6.1_DebianSqueeze Salmon-0.6.1 \
&& cp Salmon-0.6.1/bin/salmon /usr/bin/ \
&& cp Salmon-0.6.1/lib/* /usr/bin/

ENTRYPOINT ["salmon","-h"]
