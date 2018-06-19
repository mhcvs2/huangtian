#FROM registry.bst-1.cns.bstjpc.com:5000/golang-godep:latest
FROM registry.bst-1.cns.bstjpc.com:5000/golang-godep-beego:latest

ENV APP_DIR $GOPATH/src/huangtian
RUN mkdir -p $APP_DIR

# Set the entrypoint
ENTRYPOINT (cd $APP_DIR && ./huangtian)
ADD . $APP_DIR

# Compile the binary and statically link
RUN cd $APP_DIR && CGO_ENABLED=0 godep go build -ldflags '-d -w -s'

EXPOSE 8080
