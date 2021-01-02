FROM nezhkind/php:7.4.13-fpm

# Install supervisor 4
RUN apt-get update && apt-get install python-pip -y
RUN pip install supervisor

RUN > /tmp/supervisor.sock

CMD supervisord -n -c /etc/supervisor/supervisord.conf