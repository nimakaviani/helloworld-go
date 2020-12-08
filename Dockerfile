FROM alpine:3.11

COPY helloworld-go /opt/app/

CMD ["/opt/app/helloworld-go"]
