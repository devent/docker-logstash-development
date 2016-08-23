FROM logstash:2.3.4-1
MAINTAINER Dennis Stritzke <dennis@stritzke.me>
MAINTAINER Erwin Müller <erwin.mueller@nttdata.com>

# Install logstash development.
RUN set -x \
    && logstash-plugin install --development

# Install python and pip.
RUN set -x \
    && apt-get update && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

# Install jinja2 with yaml support.
RUN set -x \
    && pip install "j2cli[yaml]"

# Checks installed software.
RUN set -x \
    && j2 -v \
    && logstash agent -V
