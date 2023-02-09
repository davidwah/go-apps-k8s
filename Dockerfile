FROM golang:1.19-alpine as builder
WORKDIR /app
COPY . .
RUN go build -o main
FROM alpine
WORKDIR /app
COPY --from=builder /app /app/
EXPOSE 8080
CMD [ "./main" ]