"""
Django settings for mysite project.

Generated by 'django-admin startproject' using Django 3.0.3.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.0/ref/settings/
"""

import os

os.environ['DJANGO_SETTINGS_MODULE'] = 'mysite.settings'

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # 项目根目录

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = ''  # 密钥
APPID = ''
APPSECRET = ''
# SECURITY WARNING: don't run with debug turned on in production!

DEBUG = True
ALLOWED_HOSTS = []   # 允许访问地址

# 开启404页面
# DEBUG = False
# ALLOWED_HOSTS = ['*']

# Application definition
# 允许安装的应用
INSTALLED_APPS = [
    'django.contrib.admin',  # 站点管理系统
    'django.contrib.auth',  # 认证系统
    'django.contrib.contenttypes',  # content types框架
    'django.contrib.sessions',  # session 框架
    'django.contrib.messages',  # message 框架
    'django.contrib.staticfiles',  # 静态文件管理框架
    'blog.apps.BlogConfig',
    'juhe.apps.JuheConfig',
    'django_crontab',
]

# 中间件
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    # 'django.middleware.csrf.CsrfViewMiddleware',
    'mymiddleware.testmiddleware.TestMiddle',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

# url根文件
ROOT_URLCONF = 'mysite.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')]
        ,
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'mysite.wsgi.application'

# Database
# https://docs.djangoproject.com/en/3.0/ref/settings/#databases

# 数据库配置--->主从数据库
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#     },
#     'slave': {
#         'ENGINE': 'django.db.backends.mysql',
#         'NAME': 'data',
#         'USER': 'root',
#         'PASSWORD': '',
#         'HOST': 'localhost',
#         'PORT': '3306',
#     }
# }
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'data',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
# Password validation
# https://docs.djangoproject.com/en/3.0/ref/settings/#auth-password-validators
# 密码认证
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/3.0/topics/i18n/

# LANGUAGE_CODE = 'en-us'
# 将admin英文变简体中文
LANGUAGE_CODE = 'zh-hans'
# 时区设置 中国的东八区 默认格林尼治时间
TIME_ZONE = 'Asia/Shanghai'
# TIME_ZONE = 'UTC'
SESSION_COOKIE_AGE = 60 * 1000  # session过期时间--->秒
USE_I18N = True

USE_L10N = True

USE_TZ = False

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.0/howto/static-files/

STATIC_URL = '/static/'
# STATIC_ROOT = os.path.join(os.path.dirname(__file__),'static')
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, 'static').replace('\\', '/'),
)
STATIC_ROOT_SELF = os.path.join(BASE_DIR, 'static')
UPLOAD_PIC_DIR = os.path.join(BASE_DIR, 'resource', 'uploadpic')

# # 日志配置
LOGGING = {
    'version': 1,
    # 渲染格式--->格式化
    'formatters': {
        'standard': {
            'format': '%(asctime)s [%(threadName)s: %(thread)d]'  # 时间/线程名字/线程ID
                      '%(pathname)s:%(funcName)s:%(lineno)d %(levelname)s - %(message)s'

        }

    },
    # 过滤器--->匹配过滤
    'filters': {
        'xxx': {
            '()': 'ops.XXXFilter'
        }
    },

    # 持久化
    'handlers': {
        # 输出控制台
        'console_handler': {
            'level': 'INFO',
            'class': 'logging.StreamHandler',
            'formatter': 'standard'
        },
        # 输出文件
        'file_handler': {
            'level': 'DEBUG',
            'class': 'logging.handlers.RotatingFileHandler',
            # todo maybe loging file no exist
            'filename': os.path.join(BASE_DIR, 'ops.log'),
            'maxBytes': 100 * 1024 * 1024,  # 文件最大100M
            'backupCount': 3,  # 备份数量
            'formatter': 'standard',
            'encoding': 'utf8'
        }
    },
    # 生成一个实例日志 django
    'loggers': {
        'django': {
            'handlers': ['console_handler', 'file_handler'],
            'filters': ['xxx'],
            'level': 'DEBUG'

        }
    }
}

# 配置缓存 基于内存
CACHES = {
    'default': {
        # 1. MemCache
        # 'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        # 'LOCATION': '127.0.0.1:11211',

        # 2. DB Cache
        # 'BACKEND': 'django.core.cache.backends.db.DatabaseCache',
        # 'LOCATION': 'my_cache_table',

        # 3. Filesystem Cache
        # 'BACKEND': 'django.core.cache.backends.filebased.FileBasedCache',
        # 'LOCATION': '/var/tmp/django_cache',

        # 4. Local Mem Cache
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'LOCATION': 'backend-cache'
    }
}
# 定时
CRONJOBS = [
    ('*/2 * * * *', 'cron.jobs.demo'), # cron.jobs.demo是一个函数dosomething
    ('*/2 * * * *', 'echo "xxxxx">/dev/null'),
    ('*/3 * * * *', '/bin/ls')
]


# Email config

# QQ邮箱 SMTP 服务器地址
# EMAIL_HOST = 'smtp.qq.com'
EMAIL_HOST = "smtp.163.com"
# 端口  附加码25
EMAIL_PORT_SSL = 465  # 加密通道
EMAIL_PORT = 25
# 发送邮件的邮箱
EMAIL_HOST_USER = 'titanxz@163.com'
# 在邮箱中设置的客户端授权密码
EMAIL_HOST_PASSWORD = ''
# 开启TLS
EMAIL_USE_TLS = True
# 收件人看到的发件人
EMAIL_FROM = 'titanxz@163.com'
