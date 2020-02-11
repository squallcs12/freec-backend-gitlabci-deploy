FROM python:3.8
RUN apt-get update -qq \
&& apt install -y groff gettext \
&& pip install awscli invoke \
&& curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.6/bin/linux/amd64/kubectl \
&& chmod +x ./kubectl \
&& mv ./kubectl /usr/local/bin/kubectl \
&& curl -sL https://sentry.io/get-cli/ | bash
