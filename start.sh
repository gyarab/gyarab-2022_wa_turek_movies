 #!/bin/sh
 ./manage.py migrate --noinput
 ./manage.py collectstatic --noinput

 exec uwsgi --http=0.0.0.0:8000 --module=gamdb.wsgi --die-on-term --touch-reload=/app/uwsgi.reload
