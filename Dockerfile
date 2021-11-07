FROM python:3.8.10
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirement.txt /app
COPY src/* /app

RUN pip3 install -r requirement.txt
CMD python3 /app/src/app.py runserver