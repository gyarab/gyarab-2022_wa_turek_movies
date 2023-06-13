FROM python:3.11

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./gamdb /app

ARG UID=1004
ARG GID=1004

RUN groupadd -g "${GID}" admin \
 && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" admin

WORKDIR /app

USER admin

COPY ./start.sh /
ENTRYPOINT ["sh","/start.sh"]
