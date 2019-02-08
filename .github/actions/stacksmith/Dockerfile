FROM gcr.io/bitnami-labs/stacksmith:0.6.0 as stacksmith

FROM bitnami/minideb

LABEL "name"="stacksmith action"
LABEL "maintainer"="Marko Mikulicic <mkm@bitnami.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.name"="Stacksmith Build"
LABEL "com.github.actions.description"="This is an Action to run stacksmith build."

RUN install_packages jq ca-certificates

COPY --from=stacksmith /app/cmd/stacksmith/stacksmith.runfiles/__main__/cmd/stacksmith/linux_amd64_static_pure_stripped/stacksmith /bin/stacksmith

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
