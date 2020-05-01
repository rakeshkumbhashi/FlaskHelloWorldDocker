# Base image is Official Python 38 - base is a debian buster image
FROM python:3.8

LABEL maintainer="rakesh.upadhyaya@gmail.com"

#Copy app to src
COPY . /src

WORKDIR /src

#Install dependencies
RUN pip3 install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python3", "./app.py"]
