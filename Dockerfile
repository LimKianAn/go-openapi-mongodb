FROM golang:alpine as builder
ENV GO111MODULE=on
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
ARG build_arg_mongodb_atlas_uri
ENV MONGODB_ATLAS_URI=$build_arg_mongodb_atlas_uri
RUN go build -o app

FROM alpine:latest
COPY --from=build /app/app .
ENV PORT 8081
CMD ["./app"]
