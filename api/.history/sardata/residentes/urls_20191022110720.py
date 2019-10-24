from rest_framework import routers
from .views import (
    PropiedadViewSet, 
    TipoPropiedadViewSet, 
  
)

routerParametricos = routers.DefaultRouter()
routerParametricos.register(r'propiedad', PropiedadViewSet)
routerParametricos.register(r'tipoPrpiedad', TipoPropiedadViewSet)
