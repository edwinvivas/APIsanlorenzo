from django.db import models

# Create your models here.
from django.db import models
from sardata.utils.uuid_field import BinaryUUIDField
import uuid

# Create your models here.
class TipoDocumento(models.Model):
    prefix = models.CharField(max_length=2)
    name = models.CharField(max_length=50)

class Pais(models.Model):
    prefix = models.CharField(max_length=2)
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

class Departamento(models.Model):
    pais = models.ForeignKey(Pais,on_delete=models.CASCADE)
    prefix = models.CharField(max_length=2)
    name = models.CharField(max_length=50)

class Municipio(models.Model):
    departamento = models.ForeignKey(Departamento,on_delete=models.CASCADE)
    prefix = models.CharField(max_length=2)
    name = models.CharField(max_length=50)


class RH(models.Model):
    name = models.CharField(max_length=3)

class Genero(models.Model):
    prefix = models.CharField(max_length=1)
    name = models.CharField(max_length=10)

class TipoVisitante(models.Model):
    name = models.CharField(max_length=10)