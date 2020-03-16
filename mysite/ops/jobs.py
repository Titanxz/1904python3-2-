#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/16 14:03:15
# @License :   (C) Copyright 2020, {python_1904}
import django
import smtplib

from email.mime.text import MIMEText


# 分析日志 发送邮件(定时任务)
import os
from mysite import settings
import logging

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'myfirstproj.settings')
django.setup()

logger = logging.getLogger('django')
log_file = 'statistics.log'

def log_analyse():
    log_file_path = os.path.join(settings.BASE_DIR,log_file)
    if not os.path.exists(log_file_path):
        # print('------->日志不存在')
        logger.info('log file not exist')
        return

    # result = {
        # {'path1': '[count,min,max,avg]'},
        # {'path1': '[count,min,max,avg]'},
        # {'path1': '[count,min,max,avg]'}}
    result = {}
    with open(log_file_path, 'r', encoding='utf8') as f:
        for line in f:
            line = line.strip()
            # print(line)  # 文件的每行数据
            # print(line, end='')  # 文件的每行数据
            line_dict = eval(line)
            # print(line_dict)
            # 记录数据  key:value([次数,min,max,avg])
            # result['count'] = 0  # 记录接口访问次数
            # result['min'] = 0  # 记录最小耗时
            # result['max'] = 0  # 记录最长耗时
            # result['avg'] = 0  # 记录平均耗时 总耗时/次数
            key = line_dict['path']

            if key in result:
                result[key][0] += 1  # 第0为标识次数
                if line_dict['used_time'] < result[key][1]:
                    result[key][1] = line_dict['used_time']
                if line_dict['used_time'] > result[key][1]:
                    result[key][2] = line_dict['used_time']
                result[key][3] += line_dict['used_time']
            else:  # 第一次
                result[key] = ['访问次数', '最小耗时', '最大耗时', '总耗时']
                result[key][0] = 1   # 记录接口访问次数
                result[key][1] = line_dict['used_time']  # 记录最小耗时
                result[key][2] = line_dict['used_time']  # 记录最长耗时
                result[key][3] = line_dict['used_time']   # 记录总耗时
        return result

def analyse():  # 添加平均耗时
    res = log_analyse()
    for key in res:
        res[key].append(res[key][3]/res[key][0])
    return res


def send_mail():
    msg = MIMEText(repr(analyse()), "plain", "utf-8")
    msg['FROM'] = "Titanxz"
    msg['Subject'] = "【端口统计】"
    receivers = ['titanxz@163.com']  # 接收人
    server = smtplib.SMTP_SSL(settings.EMAIL_HOST, settings.EMAIL_PORT_SSL)  # 加密通道
    # server = smtplib.SMTP(settings.EMAIL_HOST, settings.EMAIL_PORT)
    server.set_debuglevel(1)
    server.login(settings.EMAIL_HOST_USER, settings.EMAIL_HOST_PASSWORD)
    server.sendmail(settings.EMAIL_FROM, receivers, msg.as_string())
    server.close()

if __name__ == '__main__':
    send_mail()




# python manage.py crontab run