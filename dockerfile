FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

# Copy requirements
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install -r /app/requirements.txt

# Create app directory
WORKDIR /app

# Copy app folder
COPY ./app /app/

# Create non-root user
RUN adduser -D user
USER user
