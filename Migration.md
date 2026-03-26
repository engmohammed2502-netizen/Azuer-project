# magreat date to Azure cloud

## الخطوة الأولى: استخراج البيانات من السيرفر الأول

* انشاء نسخة تحتياطية داخل حاوية قاعدة البيانات
  ```
  docker compose exec db pg_dump -U rsu_user -d rsu_db -F c -f /tmp/db_backup.dump
  ```
* نسخ الملف من الحاوية إلى السيرفر الخاص بك
    ```
    docker compose cp db:/tmp/db_backup.dump ./db_backup.dump
    ```
* ضغط مجلد الميديا داخل حاوية الويب
```
docker compose exec web tar -czf /tmp/media_backup.tar.gz -C /app/media .
```
* نسخ الملف المضغوط من الحاوية إلى السيرفر
```
docker compose cp web:/tmp/media_backup.tar.gz ./media_backup.tar.gz
```

## الخطوة الثانية: نقل الملفات إلى السيرفر الثاني
```
scp -i ~/.ssh/id_rsa db_backup.dump media_backup.tar.gz zero@20.123.23.112:/home/zero/
```

## الخطوة الثالثة: إدخال البيانات في السيرفر الثاني

* نسخ الملف المضغوط إلى داخل حاوية الويب
```
docker compose cp /home/zero/media_backup.tar.gz web:/tmp/
```
* فك الضغط داخل مجلد الميديا الخاص بالمشروع
```
docker compose exec web bash -c "mkdir -p /app/media && tar -xzf /tmp/media_backup.tar.gz -C /app/media/"
```

* أولاً: تنظيف الجداول الفارغة الحالية لتجنب أخطاء التكرار
```
docker compose exec db psql -U rsu_prod_user -d rsu_prod_db -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
```
* ثانياً: نسخ ملف قاعدة البيانات إلى داخل الحاوية
```
docker compose cp /home/zero/db_backup.dump db:/tmp/
```
* ثالثاً: استرجاع البيانات (مع تجاهل المالك القديم -O وتجاهل الصلاحيات -x)
```
docker compose exec db pg_restore -U rsu_prod_user -d rsu_prod_db -1 -O -x /tmp/db_backup.dump
```
