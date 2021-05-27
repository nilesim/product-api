FROM alpine:3.10.2

RUN apk update && apk add openjdk8-jre-base

WORKDIR /api

COPY ./target/product-api.jar .

CMD ["java", "-jar", "product-api.jar"]

EXPOSE 80