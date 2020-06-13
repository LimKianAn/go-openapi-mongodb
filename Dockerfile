FROM golang:alpine as builder
COPY . .
ARG build_arg_mongodb_atlas_uri
ENV MONGODB_ATLAS_URI=$build_arg_mongodb_atlas_uri
RUN go build -o app

FROM alpine:latest
COPY --from=build app .
ENV PORT 8081
CMD ["./app"]