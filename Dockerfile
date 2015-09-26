FROM alpine:3.1

WORKDIR /app

RUN apk add --update python python-dev py-pip build-base

COPY requirements.txt ./
COPY .env ./

RUN source .env \
  && pip install --upgrade -r requirements.txt \
  && pip install https://get.dato.com/GraphLab-Create/1.6/${LICENSE_EMAIL}/${LICENSE_KEY}/GraphLab-Create-License.tar.gz

EXPOSE 8888

CMD ["/bin/ash"]
