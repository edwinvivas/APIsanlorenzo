from django.shortcuts import render
from .serializers import (
   PropiedadSerializer,
   TipoPropiedadSerializer
)
from .models import (
    Propiedad,
    TipoPropiedad
    )
from rest_framework import viewsets
from rest_framework.pagination import PageNumberPagination
# Create your views here.
class LargeResultsSetPagination(PageNumberPagination):
    page_size = 2000
    page_size_query_param = 'page_size'
    max_page_size = 10000

class TipoPropiedadViewSet(viewsets.ModelViewSet):
    queryset = TipoPropiedad.objects.all()
    serializer_class = TipoPropiedadSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'
    pagination_class = LargeResultsSetPagination

class PropiedadViewSet(viewsets.ModelViewSet):
    queryset = Propiedad.objects.all()
    serializer_class = PropiedadSerializer
    filter_fields = '__all__'
    ordering_fields = '__all__'
    pagination_class = LargeResultsSetPagination    

