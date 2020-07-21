FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/services/app/src
WORKDIR /opt/services/app/src

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . /opt/services/app/src
RUN cd webapp && python manage.py collectstatic --no-input
COPY wait_for_db.sh ./
COPY populate_db.sh ./

EXPOSE 8000
CMD ["./wait_for_db.sh", "db", "./populate_db.sh", "gunicorn", "--bind", ":8000", "--chdir", "webapp", "batch7rse.wsgi"]
