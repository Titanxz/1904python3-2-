#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/13 18:43:50
# @License :   (C) Copyright 2020, {python_1904}
import logging
import time
import datetime
logger_statistics = logging.getLogger('statistics')

class TestMiddle():
    def __init__(self, get_response):  # 重写函数
        self.get_response = get_response

    def __call__(self, request):   # 重写函数
        print('------------------>before call')
        response = self.get_response(request)
        print('------------------>after call')
        return response

class Statistics():
    def __init__(self, get_response):  # 重写函数
        self.get_response = get_response

    def __call__(self, request):   # 重写函数
        print('------------------>before call')
        start_time = time.time()
        start_datetime = str(datetime.datetime.now())
        print(request)
        path = request.path
        full_path = request.get_full_path() # 和path一样
        response = self.get_response(request)

        end_time = time.time()
        log_dict = {
            'start_datetime': start_datetime,
            'used_time': end_time-start_time,
            'path': full_path
        }
        logger_statistics.info(repr(log_dict))  # repr 将字典转成字符串
        print('------------------>after call')
        return response

