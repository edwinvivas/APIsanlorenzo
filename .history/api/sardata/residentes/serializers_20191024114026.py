from rest_framework import serializers
from .models import (
    TipoPropiedad, 
    Propiedad,
    Residente,
    Vehiculo,
    Parqueadero
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

class ParqueaderoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Parqueadero
        fields = "__all__"

