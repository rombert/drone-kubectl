FROM alpine:3
RUN apk --no-cache add curl ca-certificates bash gettext
LABEL maintainer "Daniel Ramirez <dxas90@gmail.com>"

ENTRYPOINT ["/bin/kubectl"]
CMD ["--help"]

RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl
COPY entrypoint.sh /bin/kubectl
