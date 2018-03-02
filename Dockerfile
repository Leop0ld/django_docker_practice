FROM python:3
ENV PYTHONUNBUFFERED=1

RUN \
    apt-get update && \
    apt-get -y install \
        libpq-dev \
        python-dev

WORKDIR /app

ADD     ./manage.py         /app/
ADD     ./requirements.txt  /app/
RUN     pip install -r requirements.txt

ADD     ./double_D/         /app/double_D/
RUN     ./manage.py collectstatic --noinput

CMD ["gunicorn", "--workers=3". "--bind", "0:8000", "double_D.wsgi"]
