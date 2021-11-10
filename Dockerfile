FROM golang:1.16-alpine
# create a working directory
WORKDIR /go/src/app
# Download Go modules
COPY go.mod .
RUN go mod download
# add source code
ADD src src
#Expose port 3030
EXPOSE 3030
# run main.go
CMD ["go", "run", "src/main.go"]

