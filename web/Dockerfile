FROM alpine

RUN apk add --update darkhttpd
ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["darkhttpd", "/srv/web", "--port", "80"]

COPY entrypoint.sh /entrypoint.sh
