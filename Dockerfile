FROM python:3.9-slim-buster
MAINTAINER Shunya # Change the name and email address
COPY  ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt  # This downloads all the dependencies
COPY . /app
CMD ["python", "app.py"]
