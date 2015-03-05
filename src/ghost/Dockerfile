FROM nodejs

MAINTAINER Richard Collins <richardc@richardc.net>

RUN mkdir /ghost \
 && cd /ghost \
 && wget https://ghost.org/zip/ghost-0.5.1.zip \
 && unzip ghost-0.5.1.zip \
 && npm install --production


RUN ln -sf /config.js /ghost/config.js
RUN mv /ghost/content /ghost/original-content
RUN ln -sf /content /ghost/content

VOLUME /config.js
VOLUME /content

EXPOSE 8000

USER www-data

WORKDIR /ghost

ADD start.sh /ghost/start.sh

CMD /ghost/start.sh
