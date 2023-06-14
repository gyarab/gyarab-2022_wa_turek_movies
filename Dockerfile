FROM python:3.11

RUN pip install --upgrade pip

COPY ./requirements.txt /
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

ARG UID=1004
ARG GID=1004

RUN groupadd -g "${GID}" admin \
    && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" admin

COPY ./start.sh /

WORKDIR /app
USER admin

EXPOSE 80
VOLUME [ "/data", "/app" ]
# STOPSIGNAL SIGQUIT  # replaced by die on term

# TODO use start script
# CMD uwsgi --http=0.0.0.0:80 --module=backend.wsgi --die-on-term --uid "${UID}" --gid "${GID}"
ENTRYPOINT [ "/start.sh" ]
CMD [ "uwsgi" ]
