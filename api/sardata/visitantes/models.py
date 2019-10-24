from django.db import models
from parametricos.models import (TipoDocumento, Departamento, Municipio, RH, Genero, TipoVisitante)
from residentes.models import (Propiedad, TipoPropiedad)

from sardata.utils.uuid_field import BinaryUUIDField
import uuid

# Create your models here.
class Test(models.Model):
    name = models.FileField(blank=False, null=False)

class Visitante(models.Model):
    #id  = BinaryUUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    
    foto = models.FileField(blank=False, null=False)
    
    tipo_visitante = models.ForeignKey(TipoVisitante, on_delete= models.CASCADE)

    tipo_documento = models.ForeignKey(TipoDocumento, on_delete= models.CASCADE)
    numero_documento  = models.CharField(max_length = 12, null=False, blank=False)
    lugar_expedicion_documento = models.ForeignKey(Municipio, on_delete=models.CASCADE)
    fecha_expedicion_documento = models.DateField( null=False, blank=False)


    primer_nombre = models.CharField(max_length = 50, null=False, blank=False)
    segundo_nombre = models.CharField(max_length = 50, null=True, blank=True)
    primer_apellido = models.CharField(max_length = 25, null=False, blank=False)
    segundo_apellido = models.CharField(max_length = 25, null=False, blank=False,)
    rh = models.ForeignKey(RH, on_delete= models.CASCADE)
    genero = models.ForeignKey(Genero, on_delete = models.CASCADE)
    fecha_nacimiento = models.DateField( null=False, blank=False)

    celular = models.CharField(max_length = 12, null=False, blank=False)
    email = models.CharField(max_length = 50, null=False, blank=False)

    contacto_emergencia = models.CharField(max_length = 100, null=False, blank=False)
    celular_emergencia = models.CharField(max_length = 12, null=False, blank=False)
    eps = models.CharField(max_length = 50, null=False, blank=False)
    
    razon_social_empresa = models.CharField(max_length = 50, null=True, blank=True)
    arl = models.CharField(max_length = 50, null=True, blank=True)

    

    

    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

class Entrada(models.Model):
    id  = BinaryUUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    visitante = models.ForeignKey(Visitante, on_delete= models.CASCADE)
    apartamento = models.ForeignKey(Propiedad, on_delete= models.CASCADE)