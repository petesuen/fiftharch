from django.contrib import admin

from .models import Project, Class, Image

# Register your models here.
admin.site.register(Project)
admin.site.register(Class)
admin.site.register(Image)