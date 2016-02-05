from django.db import models

import datetime

# Create your models here.
class Project(models.Model):
    name = models.CharField(max_length=200)
    desc = models.TextField(default='')
    blurb = models.CharField(max_length=200, default='')
    date = models.DateTimeField('date', default=datetime.datetime.now)
     
    def __unicode__(self):
        return self.name
    
class Class(models.Model):
    name = models.CharField(max_length=200)
    desc = models.TextField(default='')
    blurb = models.CharField(max_length=200, default='')
    school = models.CharField(max_length=200)
    semester = models.CharField(max_length=200)
    date = models.DateTimeField('date', default=datetime.datetime.now)
    
    def __unicode__(self):
        return self.name
    
class Image(models.Model):
    filename = models.CharField(max_length=200)
    caption = models.TextField(default='', blank=True)
    project = models.ForeignKey(Project, on_delete=models.CASCADE, blank=True, null=True)
    my_class = models.ForeignKey(Class, on_delete=models.CASCADE, blank=True, null=True)
    is_index_img = models.BooleanField(default=False)
    date = models.DateTimeField('date', default=datetime.datetime.now)
    
    def __unicode__(self):
        return self.filename