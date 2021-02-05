FROM golang
MAINTAINER suresh kumar vv <https://github.com/suresh-baswa>
RUN go get github.com/suresh-baswa/Rest-API
WORKDIR /go/src/app
RUN cp /go/src/github.com/suresh-baswa/Rest-API/RestAPIExample.go /go/src/app
RUN go build /go/src/app/RestAPIExample.go
CMD ["/go/src/app/RestAPIExample"]