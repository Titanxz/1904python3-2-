from django.contrib import admin
import time, random
# Register your models here.

from .models import Article, User
# from blog.models import Article

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'publish_date')   # 后台显示标题,日期
    list_filter = ('publish_date',)   # 过滤器

class UserAdmin(admin.ModelAdmin):
    list_display = ('openid', 'nickname')  # 后台显示标题,日期
    list_filter = ('openid',)
admin.site.register(Article, ArticleAdmin)  # 将模型注册到admin中
admin.site.register(User, UserAdmin)  # 将模型注册到admin中
# admin.site.register(Article)  # 将模型注册到admin中

# 装饰器写法 效果相当于注册模型--->admin.site.register(User, UserAdmin)
# @admin.register(User)
# class UserAdmin(admin.ModelAdmin):
#     exclude = ['openid'] # 不包含openid
#     # 可以定义一些规则来控制插入模型字段的值
#     def save_model(self, request, obj, form, change):
#         print('--->',obj)
#         print(request.method)
#         obj.openid = obj.name + str(random.randint(1,1000))
#         return super(UserAdmin, self).save_model(request, obj, form, change)


