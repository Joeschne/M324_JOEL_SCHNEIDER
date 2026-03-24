FROM alpine:latest

COPY review.sh /review.sh
RUN chmod +x /review.sh
CMD ["/review.sh"]
