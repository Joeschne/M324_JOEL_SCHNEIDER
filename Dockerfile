FROM alpine:latest

RUN apk add --no-cache git

COPY review.sh /review.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /review.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
