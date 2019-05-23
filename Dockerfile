FROM ubuntu:16.04

####################################################################################################################
# Ubuntu Packages
RUN apt-get update && apt-get install -y curl unzip make git && apt-get clean && rm -rf /var/lib/apt/lists/*

####################################################################################################################
# Installation
ENV LOOM_VERSION=build-330

RUN mkdir /loom && \
	cd /loom && \
	curl -OL https://private.delegatecall.com/loom/linux/${LOOM_VERSION}/loom && \
	chmod +x loom

####################################################################################################################
# Run
EXPOSE 46656
EXPOSE 46657
EXPOSE 46658
EXPOSE 9999

WORKDIR /loom
CMD [ "./loom init" ]