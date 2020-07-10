FROM bitnami/kubectl:latest

LABEL maintainer "Sinlead <opensource@sinlead.com>"

COPY init-kubectl kubectl /opt/kubectl/bin/

USER root

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

ENV PATH="/opt/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
