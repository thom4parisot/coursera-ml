FROM python:2.7-slim

WORKDIR /app

COPY requirements.txt ./
COPY .env ./

RUN . /app/.env \
  && apt-get update \
  && apt-get install -y build-essential \
  && pip install --upgrade -r requirements.txt \
  && pip install https://get.dato.com/GraphLab-Create/1.6/${LICENSE_EMAIL}/${LICENSE_KEY}/GraphLab-Create-License.tar.gz

EXPOSE 8888

CMD ["/bin/bash"]
