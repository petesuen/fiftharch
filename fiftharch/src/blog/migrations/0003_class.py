# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-01-28 07:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_project_blurb'),
    ]

    operations = [
        migrations.CreateModel(
            name='Class',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('desc', models.TextField(default=b'')),
                ('blurb', models.CharField(default=b'', max_length=200)),
                ('school', models.CharField(max_length=200)),
                ('semester', models.CharField(max_length=200)),
            ],
        ),
    ]
