from rest_framework import routers
from .views import (
    PropiedadViewSet, 
    TipoPropiedadViewSet, 
  
)

routerResidentes = routers.DefaultRouter()
routerResidentes.register(r'propiedad', PropiedadViewSet)
routerResidentes.register(r'tipoPrpiedad', TipoPropiedadViewSet)
