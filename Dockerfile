FROM python:3.9-alpine
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apk add gcc python3-dev openssl-dev musl-dev libffi-dev &&\
    pip install --no-cache-dir -r requirements.txt

COPY main.py handler.py config.py ./
EXPOSE 24000

ENTRYPOINT [ "python", "main.py" ]