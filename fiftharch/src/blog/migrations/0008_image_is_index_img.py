# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-01-30 05:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20160129_1805'),
    ]

    operations = [
        migrations.AddField(
            model_name='image',
            name='is_index_img',
            field=models.BooleanField(default=False),
        ),
    ]