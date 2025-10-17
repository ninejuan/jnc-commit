FROM alpine:latest

WORKDIR /app

COPY gateway /app/gateway

RUN apk add --no-cache ca-certificates tzdata curl && \
    chmod +x /app/gateway

EXPOSE 8080

ENTRYPOINT ["/app/gateway"]