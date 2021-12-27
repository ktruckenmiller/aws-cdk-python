
FROM python:alpine
ARG CDK_VERSION
ENV npm_config_unsafe_perm=true
RUN apk add --update --no-cache \
    nodejs \
    npm \
    zsh \
    git && \
    npm install -g aws-cdk && \
    pip install pytest aws-cdk-lib==$CDK_VERSION
