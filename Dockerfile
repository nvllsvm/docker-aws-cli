FROM python:alpine
ARG AWSCLI_VERSION=
RUN apk add --no-cache groff less \
 && if [ -n "${AWSCLI_VERSION}" ]; then export PKG_VER="==${AWSCLI_VERSION}"; fi \
 && pip install --no-cache-dir "awscli${AWSCLI_VERSION}"
ENTRYPOINT ["aws"]
