import sys
import os
from django.core.wsgi import get_wsgi_application

sys.path.append(os.path.dirname(os.path.abspath(__file__)) + '/..')
sys.path.append('/home/peter/projects/fiftharch')
os.environ['DJANGO_SETTINGS_MODULE'] = 'fiftharch.settings'

application = get_wsgi_application()