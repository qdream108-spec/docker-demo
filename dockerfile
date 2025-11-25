FROM python:3.7-alpine

ENV pythonunbuffered=1

#copy requirements
COPY requirements.txt /app/requirements.txt

#install dependencies
RUN pip install -r requirements.txt

#create app directory
RUN mkdir /app
WORKDIR /app

#copy project files
COPY ./app /app/

#create non-root user
RUN adduser -D user
USER user
