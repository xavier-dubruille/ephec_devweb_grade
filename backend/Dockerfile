
FROM python:3.9.5-slim
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 8000
ENTRYPOINT ["./gunicorn.sh"]