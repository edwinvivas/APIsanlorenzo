from rest_framework import serializers
from .models import (
    TipoPropiedad, 
    Propiedad,
    Residente,
    Vehiculo
)

class TipoPropiedadSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoPropiedad
        fields = "__all__"

class PropiedadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Propiedad
        fields = "__all__"

class ResidenteSerializer(serializers.ModelSerializer):
    class Meta:
        model =  Residente
        fields = "__all__"

class VehiculoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vehiculo
        fields = "__all__"



