# Generated by Django 2.2.6 on 2019-10-23 18:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('parametricos', '0001_initial'),
        ('residentes', '0006_auto_20191023_1304'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='vehiculo',
            name='modelo',
        ),
        migrations.AddField(
            model_name='vehiculo',
            name='garage',
            field=models.CharField(default=' ', max_length=10),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehiculo',
            name='propiedad',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='residentes.Propiedad'),
            preserve_default=False,
        ),
        migrations.CreateModel(
            name='Residente',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero_documento', models.CharField(max_length=20)),
                ('primer_apellido', models.CharField(max_length=20)),
                ('segundo_apellido', models.CharField(max_length=20)),
                ('primer_nombre', models.CharField(max_length=20)),
                ('segundo_nombre', models.CharField(max_length=20, null=True)),
                ('fecha_nacimiento', models.DateField()),
                ('tipo_documento', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='parametricos.TipoDocumento')),
            ],
            options={
                'verbose_name': 'Residente',
                'verbose_name_plural': 'Residentes',
            },
        ),
    ]
