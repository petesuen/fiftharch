from django.shortcuts import render
from django_ajax.decorators import ajax
from .models import Project, Class, Image

def project(request, project_id):
    # Get projects and classes.
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');
    
    # Get selected project.
    project = Project.objects.filter(id=project_id)[0]
    
    # Get the project images.
    imgs =  Image.objects.filter(project=project, is_index_img=False).order_by('date');
    first_img_caption = '';
    if imgs.count()>=1:
        first_img_caption = imgs[0].caption;
        
    return render(request, 'blog/project.html', 
                  {'projects': projects_list, 
                   'classes': classes_list,
                   'project': project, 
                   'imgs': imgs,
                   'num_of_imgs': imgs.count(),
                   'first_img_caption': first_img_caption})
    

def _class(request, class_id):
    # Get projects and classes.
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');
    
    # Get selected class.
    _class = Class.objects.filter(id=class_id)[0]
    
    # Get the class images.
    imgs =  Image.objects.filter(my_class=_class, is_index_img=False).order_by('date');
    first_img_caption = '';
    if len(imgs)>1:
        first_img_caption = imgs[0].caption;
        
    return render(request, 'blog/class.html', 
                  {'projects': projects_list, 
                   'classes': classes_list,
                   'class': _class, 
                   'imgs': imgs,
                   'num_of_imgs': imgs.count(),
                   'first_img_caption': first_img_caption})

@ajax
def get_img_caption(request):
    if 'id' in request.GET:
        img_id = int(request.GET['id'])
        img = Image.objects.filter(id=img_id)[0]
        if img is not None:
            
            return {'caption': img.caption}

def index(request):
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');
    
    # Get index images.
    imgs = Image.objects.filter(is_index_img=True).order_by('-date')
    
    return render(request, 'blog/index.html', 
                  {'projects': projects_list, 
                   'classes': classes_list,
                   'imgs': imgs})

def about(request):
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');

    return render(request, 'blog/about.html', 
                  {'projects': projects_list, 
                   'classes': classes_list})
    
def publications(request):
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');

    return render(request, 'blog/publications.html', 
                  {'projects': projects_list, 
                   'classes': classes_list})
    
def news(request):
    projects_list = Project.objects.order_by('-date');
    classes_list = Class.objects.order_by('-date');

    return render(request, 'blog/news.html', 
                  {'projects': projects_list, 
                   'classes': classes_list})

