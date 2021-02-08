FROM python:3.9.1
RUN pip install flask

ENV FLASK_APP hello.py

COPY . /app
WORKDIR /app

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]
