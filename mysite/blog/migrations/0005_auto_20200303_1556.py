# Generated by Django 3.0.3 on 2020-03-03 15:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20200303_1550'),
    ]  # 依赖那个迁移文件
    operations = [
        migrations.AddIndex(
            model_name='user',
            index=models.Index(fields=['nickname'], name='nickname'),
        ),
    ]
