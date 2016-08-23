REPOSITORY := erwinnttdata
NAME := docker-logstash-development
VERSION ?= 2.3.4-1

build: _build ##@targets Builds the docker image.

deploy: _deploy ##@targets Deployes the docker image to the repository.

include Makefile.help
include Makefile.functions
include Makefile.image
