# docker-logstash-development

A Docker Image, which contains Logstash with its development plugin installed. This image is useful to execute unit tests for your logstash filters.

## Changes

* Added Jinja2 parser support to parse Ansible templates.

```
j2 templates/inputs_conf.j2 ../../vars.yml > config/10_inputs.conf
```

* Added Makefile to build and deploy the docker image

```
make build
make deploy DOCKER_HUB_USER=user DOCKER_HUB_PASSWORD="password"
```
