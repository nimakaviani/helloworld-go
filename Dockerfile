from golang:1.11-stretch as builder
workdir /go/src/github.com/nimakaviani/helloworld-go
copy . .
run go build -o /out/server /go/src/github.com/nimakaviani/helloworld-go/main.go

from ubuntu:18.04
copy --from=builder /out/server /opt/app/server
CMD ["/opt/app/server"]
