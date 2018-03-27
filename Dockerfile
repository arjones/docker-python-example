FROM python:2.7-slim

RUN mkdir /app 

RUN apt-get update && \
  apt-get install -y build-essential # freetds-common libdbd-freetds

WORKDIR /app

COPY * /app/

RUN pip install --upgrade pip && \
  pip install -r requirements.txt

# RUN adduser app --homedir=/app
USER app

CMD python app.py