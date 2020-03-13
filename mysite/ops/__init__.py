#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   {Titanxz}
# @Time    :   2020/3/10 9:40:50
# @License :   (C) Copyright 2020, {python_1904}

# 日志过滤器
from logging import Filter

class XXXFilter(Filter):
    def filter(self, record):
        if 'lc' in record.msg:
            return False
        else:
            return True



