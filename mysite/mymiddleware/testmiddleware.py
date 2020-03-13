#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/13 18:43:50
# @License :   (C) Copyright 2020, {python_1904}


class TestMiddle():
    def __init__(self, get_response):  # 重写函数
        self.get_response = get_response

    def __call__(self, request):   # 重写函数
        print('------------------>before call')
        response = self.get_response(request)
        print('------------------>after call')
        return response

