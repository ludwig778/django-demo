from django.http import HttpResponse
from commands import getoutput

def index(request):
    hostname = getoutput("hostname")
    return HttpResponse("<h1>Welcome to the django testing demo site2</h1><h3>Hosted by {0}</h3>".format(hostname))
