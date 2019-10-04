FROM google/cloud-sdk:alpine

# install bash
RUN apk add --no-cache bash

# install gcloud sdk components: kubectl
#RUN apk --update add openjdk7-jre
RUN gcloud components install kubectl

# install nodejs 10
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/ nodejs=10.16.3-r0
