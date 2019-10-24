from django.shortcuts import render

# Create your views here.
from rest_framework.parsers import FileUploadParser
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import status
from rest_framework import viewsets
from .serializers import VisitanteSerializer, Visitante

import django_filters

class VisitantesFilter(django_filters.FilterSet):
    class Meta:
        model = Visitante
        exclude = ['foto']
        fields = {
            'tipo_visitante':['exact'],
            'tipo_documento':['exact'],
            'numero_documento':['exact'],
            'primer_nombre' : ['exact','icontains'],
            'segundo_nombre' : ['exact','icontains'],
            'primer_apellido' : ['exact','icontains'],
            'segundo_apellido' : ['exact','icontains'],
            'created': ['exact', 'year__gt','lte','gte'],
        }

class VisitantesViewSet(viewsets.ModelViewSet):
    queryset = Visitante.objects.all()
    serializer_class = VisitanteSerializer
    filter_class = VisitantesFilter
    search_fields = ['primer_nombre','segundo_nombre','primer_apellido','segundo_apellido']
    ordering_fields = '__all__'