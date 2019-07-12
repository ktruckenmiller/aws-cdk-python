FROM python:alpine
ENV npm_config_unsafe_perm=true
RUN apk add --update --no-cache \
    nodejs \
    nodejs-npm \
    git && \
    npm install -g aws-cdk && \
    pip install pytest
