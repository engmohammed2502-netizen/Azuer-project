import os
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent

# في الإنتاج على Azure، يجب أن تكون هذه القيم آتية من متغيرات البيئة
SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY', 'django-insecure-zero-library-project-key')
DEBUG = os.environ.get('DJANGO_DEBUG', 'False').lower() in ('true', '1', 'yes')

# قراءة الـ Hosts المسموح بها من متغيرات البيئة (مهم جداً لـ Azure App Service و Front Door)
ALLOWED_HOSTS = os.environ.get('ALLOWED_HOSTS', '*').split(',')

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'library',
    'storages', # تمت إضافة مكتبة التخزين للتعامل مع سحابة Azure
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware', # لمعالجة الملفات الثابتة Static بكفاءة
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'urls'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': os.environ.get('DB_NAME', 'rsu_db'),
        'USER': os.environ.get('DB_USER', 'rsu_user'),
        'PASSWORD': os.environ.get('DB_PASSWORD', 'rsu_password'),
        'HOST': os.environ.get('DB_HOST', 'localhost'),
        'PORT': os.environ.get('DB_PORT', '5432'),
        'OPTIONS': {
            'sslmode': 'require', # ضروري جداً للاتصال بقاعدة بيانات Azure المدارة
        },
    }
}

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.media',
            ],
        },
    },
]

LANGUAGE_CODE = 'ar'
TIME_ZONE = 'Africa/Khartoum'
USE_I18N = True
USE_TZ = True

# إعدادات الملفات الثابتة (Static Files - CSS/JS/Images)
STATIC_URL = 'static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
AUTH_USER_MODEL = 'library.User'

DATA_UPLOAD_MAX_MEMORY_SIZE = 157286400  # 150 MB
FILE_UPLOAD_MAX_MEMORY_SIZE = 157286400  # 150 MB

SESSION_COOKIE_AGE = 1800  # 30 minutes
SESSION_EXPIRE_AT_BROWSER_CLOSE = True

# إعدادات ملفات الميديا (الكتب المرفوعة) - تم التعديل لدعم سحابة Azure
USE_AZURE_STORAGE = os.environ.get('USE_AZURE_STORAGE', 'False').lower() == 'true'

if USE_AZURE_STORAGE:
    # إعدادات التخزين على Azure Blob Storage
    DEFAULT_FILE_STORAGE = 'storages.backends.azure_storage.AzureStorage'
    AZURE_ACCOUNT_NAME = os.environ.get('AZURE_ACCOUNT_NAME')
    AZURE_ACCOUNT_KEY = os.environ.get('AZURE_ACCOUNT_KEY')
    AZURE_CONTAINER = os.environ.get('AZURE_CONTAINER', 'media')
    MEDIA_URL = f'https://{AZURE_ACCOUNT_NAME}.blob.core.windows.net/{AZURE_CONTAINER}/'
else:
    # يعمل محلياً إذا لم يتم تفعيل Azure Storage
    MEDIA_URL = '/media/'
    MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

LOGIN_URL = 'login'
LOGIN_REDIRECT_URL = 'home'

# إعدادات الحماية خلف Azure Front Door أو Reverse Proxy
_origins = os.environ.get('CSRF_TRUSTED_ORIGINS', '')
CSRF_TRUSTED_ORIGINS = [x.strip() for x in _origins.split(',') if x.strip()]
SESSION_COOKIE_SAMESITE = 'Lax'
CSRF_COOKIE_SAMESITE = 'Lax'
USE_X_FORWARDED_HOST = True
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')
