#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/10 10:21:02
# @License :   (C) Copyright 2020, {python_1904}


import django
import os
import logging

os.environ['DJANGO_SETTINGS_MODULE'] = 'mysite.settings'
django.setup()

def logdemo():
    # 得到配置的实例对象
    logger = logging.getLogger('django')
    logger.info('i am info log')
    logger.warning('i am lc info log')
    logger.error('i am lc info log')
    logger.error('i am info log')
    # logger.debug()
    # logger.info()
    # logger.warning()
    # logger.error()
    # logger.critical()

if __name__ == '__main__':
    logdemo()