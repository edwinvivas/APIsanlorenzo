from django.db import models
from sardata.utils.uuid_field import BinaryUUIDField

from parametricos.models import TipoDocumento
import uuid
# Create your models here.

class TipoPropiedad(models.Model):
    """Model definition for TipoPropiedad."""
    name = models.CharField(max_length=50)


    class Meta:
        """Meta definition for TipoPropiedad."""

        verbose_name = 'TipoPropiedad'
        verbose_name_plural = 'TipoPropiedads'

    def __str__(self):
        """Unicode representation of TipoPropiedad."""
        return "("+str(self.id)+") "+self.name


class Propiedad(models.Model):
    """Model definition for Propiedad."""
    tipoPropiedad = models.ForeignKey(TipoPropiedad, on_delete=models.CASCADE)
    interior = models.CharField(max_length=3)
    numero = models.CharField(max_length=3)   

    deposito = models.CharField(max_length=3,null=True)

    
    nombre_propietario = models.CharField(max_length=255)
    tipo_documento_propietario = models.ForeignKey(TipoDocumento, on_delete=models.CASCADE)
    numero_documento_propietario = models.CharField(max_length=20)
    celular_propietario = models.CharField(max_length=11)
    telefono_propietario = models.CharField(max_length=11)
    direccion_propietario = models.CharField(max_length=50)
    propietario_es_residente = models.BooleanField(default=False)
    

    class Meta:
        """Meta definition for Propiedad."""

        verbose_name = 'Propiedad'
        verbose_name_plural = 'Propiedads'

    def __str__(self):
        """Unicode representation of Propiedad."""
        pass


class Vehiculo(models.Model):
    """Model definition for Vehiculo."""

    placa = models.CharField(max_length=8)
    marca = models.CharField(max_length=20)
    modelo = models.IntegerField(default=0)
    color = models.CharField(max_length=20)

    class Meta:
        """Meta definition for Vehiculo."""

        verbose_name = 'Vehiculo'
        verbose_name_plural = 'Vehiculos'

    def __str__(self):
        """Unicode representation of Vehiculo."""
        pass

