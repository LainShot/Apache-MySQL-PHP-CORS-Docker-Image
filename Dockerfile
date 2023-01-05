FROM debian:latest

COPY setup.sh .
RUN chmod +x setup.sh && ./setup.sh

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
