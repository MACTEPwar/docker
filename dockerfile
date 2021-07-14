FROM node:12.18.1-alpine as node-angular-cli

#Linux setup
RUN apk update && apk add --update alpine-sdk && apk del alpine-sdk && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm && npm cache verify && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd && mkdir /home/repos && apk add --update git
VOLUME /home/repos

#Angular CLI
RUN npm install -g @angular/cli
