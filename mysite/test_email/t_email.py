#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/13 17:23:12
# @License :   (C) Copyright 2020, {python_1904}


import os
import django
import smtplib
from mysite import settings

from email.mime.text import MIMEText


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'myfirstproj.settings')
django.setup()


def send_mail():
    msg = MIMEText("邮件通道测试", "plain", "utf-8")
    msg['FROM'] = "Mail Test"
    msg['Subject'] = "【Mail Test】"
    receivers = ['titanxz@163.com']  # 接收人
    server = smtplib.SMTP_SSL(settings.EMAIL_HOST, settings.EMAIL_PORT_SSL)  # 加密通道
    # server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
    server.set_debuglevel(1)
    server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
    server.sendmail(settings.EMAIL_FROM, receivers, msg.as_string())
    server.close()



if __name__ == '__main__':
    send_mail()


