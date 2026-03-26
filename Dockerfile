FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app/

# تجميع الملفات الثابتة عشان تظهر الألوان والتصميمات صح للزوار
RUN python manage.py collectstatic --noinput

CMD ["bash", "-c", "python manage.py makemigrations && python manage.py migrate && python manage.py create_root_user && gunicorn wsgi:application --bind 0.0.0.0:8000"]
