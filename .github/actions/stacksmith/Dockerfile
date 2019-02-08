FROM gcr.io/bitnami-labs/stacksmith:bazel-jenkins-stacksmith2-promoter-master-4304-1ed2e8f976717aad5af08decaad65b6466c67ded as stacksmith

FROM bitnami/minideb

LABEL "name"="stacksmith action"
LABEL "maintainer"="Marko Mikulicic <mkm@bitnami.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.name"="Stacksmith Build"
LABEL "com.github.actions.description"="This is an Action to run stacksmith build."

RUN install_packages jq

COPY --from=stacksmith /app/cmd/stacksmith/stacksmith.runfiles/__main__/cmd/stacksmith/linux_amd64_static_pure_stripped/stacksmith /bin/stacksmith

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
