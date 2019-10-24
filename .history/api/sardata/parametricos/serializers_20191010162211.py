from rest_framework import serializers
from .models import (
    TipoDocumento, 
    Departamento, 
    Municipio, 
    Pais, 
    RH, 
    Genero, 
    TipoVisitante
)

class TipoDocumentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoDocumento
        fields = "__all__"

class DepartamentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Departamento
        fields = "__all__"

class MunicipioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Municipio
        fields = "__all__"

class PaisSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pais
        fields = "__all__"


class RHSerializer(serializers.ModelSerializer):
    class Meta:
        model = RH
        fields = "__all__"

class GeneroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Genero
        fields = "__all__"

class TipoVisitanteSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoVisitante
        fields = "__all__"


