#from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse

def greet(request):
    return HttpResponse("Hello from Django in Docker! 🚀")

