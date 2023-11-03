FROM alpine
RUN apk update && apk --no-cache add py3-pip

COPY ./src /app/src
WORKDIR /app/src

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3", "app.py" ]