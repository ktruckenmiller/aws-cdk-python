FROM python:alpine
RUN apk add --update --no-cache \
    nodejs \
    nodejs-npm \
    git && \
    npm install -g aws-cdk && \
    pip install pytest
