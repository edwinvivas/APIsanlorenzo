from rest_framework import routers
from django.urls import path
from .views import *
routerVisitantes = routers.DefaultRouter()
routerVisitantes.register(r'visitantes', VisitantesViewSet)
