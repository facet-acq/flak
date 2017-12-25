FROM alpine:3.7
LABEL maintainer="djfurman@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add python3

COPY . /flak
WORKDIR /flak
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]
CMD ["app.py"]
