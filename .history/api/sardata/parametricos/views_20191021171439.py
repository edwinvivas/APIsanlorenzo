from django.shortcuts import render
from .serializers import (
    DepartamentoSerializer, 
    MunicipioSerializer, 
    TipoDocumentoSerializer,
    RHSerializer,
    GeneroSerializer,
    TipoVisitanteSerializer
)
from .models import (
    Departamento, 
    Municipio, 
    TipoDocumento, 
    RH, 
    Genero, 
    TipoVisitante)
from rest_framework import viewsets
from rest_framework.pagination import PageNumberPagination
# Create your views here.
class LargeResultsSetPagination(PageNumberPagination):
    page_size = 2000
    page_size_query_param = 'page_size'
    max_page_size = 10000

class DepartamentoViewSet(viewsets.ModelViewSet):
    queryset = Departamento.objects.all()
    serializer_class = DepartamentoSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'
    pagination_class = LargeResultsSetPagination
class MunicipioViewSet(viewsets.ModelViewSet):
    queryset = Municipio.objects.all()
    serializer_class = MunicipioSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'
    pagination_class = LargeResultsSetPagination    
class TipoDocumentoViewSet(viewsets.ModelViewSet):
    queryset = TipoDocumento.objects.all()
    serializer_class = TipoDocumentoSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'

class RHViewSet(viewsets.ModelViewSet):
    queryset = RH.objects.all()
    serializer_class = RHSerializer
    search_fields = ['@name',]
    filter_fields = '__all__'
    ordering_fields = '__all__'

class GeneroViewSet(viewsets.ModelViewSet):
    queryset = Genero.objects.all()
    serializer_class = GeneroSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'

class TipoVisitanteViewSet(viewsets.ModelViewSet):
    queryset = TipoVisitante.objects.all()
    serializer_class = TipoVisitanteSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'


