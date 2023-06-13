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

<<<<<<< HEAD
# TODO use start script
# CMD uwsgi --http=0.0.0.0:80 --module=backend.wsgi --die-on-term --uid "${UID}" --gid "${GID}"
ENTRYPOINT [ "/start.sh" ]
CMD [ "uwsgi" ]
# CMD [ "uwsgi", "'${UID}'", "'${GID}'" ]
=======
COPY ./start.sh /
ENTRYPOINT ["sh","/start.sh"]
>>>>>>> eccfa907ef5b8cd1b22d49f67adc6c741ac41dac
