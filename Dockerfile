FROM python:3.8-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./FlaskApp /app

ENTRYPOINT [ "python" ]

EXPOSE 5000
EXPOSE 80
EXPOSE 443

CMD ["__init__.py" ]
