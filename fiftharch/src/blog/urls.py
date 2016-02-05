from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^get_img_caption$', views.get_img_caption, name='get_img_caption'),
    url(r'^project/(?P<project_id>[0-9]+)/$', views.project, name='project'),
    url(r'^class/(?P<class_id>[0-9]+)/$', views._class, name='class'),
]