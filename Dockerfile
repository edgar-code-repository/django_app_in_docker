FROM python:3.6

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir books_app
RUN mkdir django_app_in_docker

COPY books_app ./books_app
COPY django_app_in_docker ./django_app_in_docker
COPY manage.py .

COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh

EXPOSE 8888
CMD ["./entrypoint.sh"]
