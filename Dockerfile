FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# تثبيت المتطلبات أولاً للاستفادة من الكاش في Docker
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# نسخ باقي ملفات المشروع
COPY . /app/

# تجميع الملفات الثابتة ليعمل whitenoise بنجاح
RUN python manage.py collectstatic --noinput

# فتح البورت 8000
EXPOSE 8000

# أمر التشغيل الأساسي: يقوم بعمل تهيئة للقاعدة، ثم إنشاء مدير (إذا لم يوجد)، ثم تشغيل السيرفر
CMD bash -c "python manage.py migrate && python manage.py create_root_user && gunicorn wsgi:application --bind 0.0.0.0:8000"
