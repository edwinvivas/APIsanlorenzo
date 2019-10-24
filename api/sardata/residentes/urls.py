from rest_framework import routers
from .views import (
    PropiedadViewSet, 
    TipoPropiedadViewSet, 
  ResidenteViewSet,
VehiculoViewSet
)

routerResidentes = routers.DefaultRouter()

routerResidentes.register(r'propiedad', PropiedadViewSet)
routerResidentes.register(r'tipoPrpiedad', TipoPropiedadViewSet)
routerResidentes.register(r'Residente', ResidenteViewSet)
routerResidentes.register(r'Vehiculo', VehiculoViewSet)