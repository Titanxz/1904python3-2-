#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/11 10:18:43
# @License :   (C) Copyright 2020, {python_1904}

import django
import os
from django.core.cache import cache
import time
os.environ['DJANGO_SETTINGS_MODULE'] = 'mysite.settings'
django.setup()


def get1():
    time.sleep(6)
    res = cache.get('coke')  # cache 全局缓存
    print('get1--->', res)
if __name__ == '__main__':
    # 存数据
    cache.set('coke', 'cookies', 5)  # 缓存存在时间5秒
    # 获取数据
    print(cache.get('coke'))
    get1()