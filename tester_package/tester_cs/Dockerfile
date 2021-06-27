FROM microsoft/dotnet
USER root

#ARG TESTER_CS_REPOGITORY
ARG HOST_TEST_CONTROLLER_WORKSPACE

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

COPY build/run_test.sh /home/build/run_test.sh

RUN echo $TESTER_CS_REPOGITORY