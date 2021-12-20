from alpine

COPY kubectl* /usr/local/bin/

RUN chmod +x  /usr/local/bin/kubectl*

CMD ["/bin/sh"]
