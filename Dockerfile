FROM golang:1.6.2

RUN apt-get update && apt-get install -y --no-install-recommends \
  libnl-3-dev \
  libnl-genl-3-dev \
  unzip

ADD https://releases.hashicorp.com/serf/0.7.0/serf_0.7.0_linux_amd64.zip serf.zip
RUN unzip serf.zip
RUN rm serf.zip
RUN mv serf /usr/local/bin/

ADD . /go/src/github.com/luizbafilho/fusis

# VOLUME /home/root
# ENV PATH "$PATH:/home/root"
#
# EXPOSE 7946
# CMD ["bash"]
# ENTRYPOINT ["/home/root/fusis"]
