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
    interior = models.CharField(max_length=3)
    numero = models.CharField(max_length=3)   
    tipoPropiedad = models.ForeignKey(TipoPropiedad, on_delete=models.CASCADE)

    deposito = models.CharField(max_length=10,null=True)

    nombre_propietario = models.CharField(max_length=255)
    tipo_documento_propietario = models.ForeignKey(TipoDocumento, on_delete=models.CASCADE)
    numero_documento_propietario = models.CharField(max_length=20)
    celular_propietario = models.CharField(max_length=40)
    telefono_propietario = models.CharField(max_length=40)
    direccion_propietario = models.CharField(max_length=200)
    propietario_es_residente = models.BooleanField(default=False)
    inmobiliaria_razon_social  = models.CharField(max_length=50,null=True) 

    class Meta:
        """Meta definition for Propiedad."""

        verbose_name = 'Propiedad'
        verbose_name_plural = 'Propiedads'

    def __str__(self):
        """Unicode representation of Propiedad."""
        return self.interior + ' ' + self.numero


class Residente(models.Model):
    propiedad = models.ForeignKey(Propiedad, on_delete=models.CASCADE)
    tipo_documento = models.ForeignKey( TipoDocumento, on_delete= models.CASCADE)
    numero_documento = models.CharField(max_length=20)
    primer_apellido = models.CharField(max_length=20)
    segundo_apellido = models.CharField(max_length=20)
    primer_nombre = models.CharField(max_length=20)
    segundo_nombre = models.CharField(max_length=20, null=True)
    fecha_nacimiento = models.DateField()

    class Meta:
        """Meta definition for Residente."""

        verbose_name = 'Residente'
        verbose_name_plural = 'Residentes'

    def __str__(self):
        return self.primer_nombre + " " + self.primer_apellido


class Vehiculo(models.Model):
    """Model definition for Vehiculo."""
    propiedad = models.ForeignKey(Propiedad, on_delete=models.CASCADE)
    placa = models.CharField(max_length=8)
    marca = models.CharField(max_length=20)
    
    color = models.CharField(max_length=20)
    garage = models.CharField(max_length=10)
    class Meta:
        """Meta definition for Vehiculo."""

        verbose_name = 'Vehiculo'
        verbose_name_plural = 'Vehiculos'

    def __str__(self):
        """Unicode representation of Vehiculo."""
        pass

