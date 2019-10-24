from rest_framework import serializers
from .models import (
    TipoPropiedad, 
    Propiedad
)

class TipoPropiedadSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoPropiedad
        fields = "__all__"

class PropiedadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Propiedad
        fields = "__all__"


