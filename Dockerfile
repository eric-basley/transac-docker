FROM node:latest

RUN apt-get update && apt-get install -y git vim-tiny

RUN npm install -g grunt-cli bower \
&& npm install -g n_  \
&& npm cache clear

WORKDIR /apps
RUN git clone https://github.com/redpelicans/transacd.git \
&& cd transacd \
&& npm install \
&& bower --force-latest --allow-root install \
&& grunt  serve:dist 

EXPOSE 80
WORKDIR /apps/transacd
CMD node backend/main



