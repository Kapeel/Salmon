# Salmon 
# VERSION               0.5.0
# 

FROM      ubuntu:14.04.3 
MAINTAINER Kapeel Chougule

LABEL Description="This image is used for running Salmon RNA seq qauntification tool, This is using a Debian Binary for installation "
RUN apt-get update && apt-get install -y build-essential cmake zlib1g-dev wget
#libhdf5-dev pkg-config liblzma-dev apt-get install libbz2-dev curl unzip

RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v0.5.0/SalmonBeta-0.5.0_DebianSqueeze.tar.gz \
&& tar -xvf SalmonBeta-0.5.0_DebianSqueeze.tar.gz \
&& mv SalmonBeta-0.5.0_DebianSqueeze SalmonBeta-0.5.0 \
&& cp SalmonBeta-0.5.0/bin/salmon /usr/bin/ \
&& cp SalmonBeta-0.5.0/lib/* /usr/bin/

ENTRYPOINT ["salmon","-h"]
