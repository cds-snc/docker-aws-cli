all: build

build:
	@docker build --rm --tag=cdssnc/aws-cli .
