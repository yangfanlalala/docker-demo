FROM golang:1.13-alpine AS build
WORKDIR /srv/ 
COPY main.go go.* /srv/
RUN CGO_ENABLED=0 go build -o /bin/demo

FROM scratch
COPY --from=build /bin/demo /bin/demo 
EXPOSE 8989
ENTRYPOINT ["/bin/demo"]