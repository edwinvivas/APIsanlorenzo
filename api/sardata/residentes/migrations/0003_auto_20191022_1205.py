# Generated by Django 2.2.6 on 2019-10-22 17:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('parametricos', '0001_initial'),
        ('residentes', '0002_auto_20191022_1109'),
    ]

    operations = [
        migrations.AddField(
            model_name='propiedad',
            name='celular_propietario',
            field=models.CharField(default='', max_length=11),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='propiedad',
            name='deposito',
            field=models.CharField(max_length=3, null=True),
        ),
        migrations.AddField(
            model_name='propiedad',
            name='direccion_propietario',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='propiedad',
            name='inmobiliaria_razon_social',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='propiedad',
            name='nombre_propietario',
            field=models.CharField(default='', max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='propiedad',
            name='numero_documento_propietario',
            field=models.CharField(default='', max_length=20),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='propiedad',
            name='propietario_es_residente',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='propiedad',
            name='telefono_propietario',
            field=models.CharField(default='', max_length=11),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='propiedad',
            name='tipo_documento_propietario',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='parametricos.TipoDocumento'),
            preserve_default=False,
        ),
    ]
