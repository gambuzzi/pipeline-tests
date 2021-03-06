FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

RUN apk --update add bash nano

ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static

COPY ./requirements.txt /var/www/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /var/www/requirements.txt

COPY ./app /app/app
COPY ./main.py /app/main.py
COPY ./uwsgi.ini /app/uwsgi.ini