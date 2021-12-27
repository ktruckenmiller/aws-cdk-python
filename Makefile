develop: build
	docker run -it --rm \
	-w ${PWD} \
	-v ${PWD}:${PWD} \
	ktruckenmiller/aws-cdk zsh

build:
	docker build --build-arg CDK_VERSION=$(shell cat VERSION) -t ktruckenmiller/aws-cdk .
