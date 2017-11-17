FROM influxdb:1.2

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y golang

ENV GOPATH=/go PATH=$PATH:$GOROOT/bin:$GOPATH/bin

RUN mkdir /go && cd /go 
    # go get github.com/influxdata/influx-stress

# RUN git clone https://github.com/influxdata/influx-stress.git influx-stress && \
	# cd influx-stress 
	# go install ./cmd/... ./lineprotocol/... ./point/... ./stress/... ./write/...
