# use a golang version
FROM golang:1.20-alpine3.16

# set working directory
WORKDIR /opt/app

# copy the source code inside docker image
COPY . .

# download dependencies and install
RUN go get -d -v ./...

# build the go app
RUN go build -o api .

# expose port
EXPOSE 8000

# run the executables
CMD ["./api"]
