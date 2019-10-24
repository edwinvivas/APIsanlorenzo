from rest_framework import routers
from .views import (
    DepartamentoViewSet, 
    MunicipioViewSet, 
    PaisViewSet, 
    TipoDocumentoViewSet,
    RHViewSet,
    GeneroViewSet,
    TipoVisitanteViewSet
)

routerParametricos = routers.DefaultRouter()
routerParametricos.register(r'departamento', DepartamentoViewSet)
routerParametricos.register(r'municipio', MunicipioViewSet)
routerParametricos.register(r'pais', PaisViewSet)
routerParametricos.register(r'tipoDocumento', TipoDocumentoViewSet)
routerParametricos.register(r'rh', RHViewSet)
routerParametricos.register(r'genero', GeneroViewSet)
routerParametricos.register(r'tipo_visitante', TipoVisitanteViewSet)
