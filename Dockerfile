FROM golang:1.24    

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /wh
EXPOSE 80
CMD ["/wh"]