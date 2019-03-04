FROM alpine as checker
COPY "src/*" "/usr/local/bin/"
COPY tests/ Makefile /adr/
WORKDIR /adr
RUN apk add --update make bash && \
    make check

FROM alpine
RUN apk add --update bash
COPY "src/*" "/usr/local/bin/"
CMD ["adr"]
