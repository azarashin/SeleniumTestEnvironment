FROM microsoft/dotnet
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

# for debian
RUN apt -y install nodejs
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get update
RUN curl -sLf -o /dev/null 'https://deb.nodesource.com/node_9.x/dists/stretch/Release'
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo 'deb https://deb.nodesource.com/node_9.x stretch main' > /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb-src https://deb.nodesource.com/node_9.x stretch main' >> /etc/apt/sources.list.d/nodesource.list
RUN apt-get update
RUN apt-get -y install npm
RUN npm install express ejs

ENTRYPOINT ["node","/home/web/app.js"]