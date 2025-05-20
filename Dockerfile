FROM python:3.10-slim

WORKDIR /app

COPY  /app .
RUN pip install  -r requirements.txt


COPY . /app

EXPOSE 5000

CMD [ "python" , "app.py" ]
# docker build -t my-python-app .