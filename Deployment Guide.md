# update system

```
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose certbot -y
```

## (تأكد إنك حدثت الـ IP في موقع DuckDNS قبل تنفيذ هذا الأمر)
```
sudo certbot certonly --standalone -d eng-zero-library.duckdns.org
```
 * (سيطلب منك إيميلك، اكتبه واضغط Y للموافقة).
قم برفع مجلد مشروعك (الذي يحتوي على جميع الملفات التي عدلناها أعلاه) إلى السيرفر.
(يمكنك استخدام git clone أو scp).


```
sudo docker-compose up -d --build

```


## SSL تجديد شهادة
 * داخل السيرفر نفذ الأمر التالي لفتح جدول المهام:

 
 ```
 sudo crontab -e

 ```

*  اضف هذا السطر الى اخر الملف 
 ```
 0 0 * * * certbot renew --quiet --post-hook "docker restart $(docker ps -q --filter ancestor=nginx)"

 ```
