# Generated by Django 2.2.6 on 2019-10-24 01:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('residentes', '0009_auto_20191023_2055'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vehiculo',
            name='color',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='vehiculo',
            name='garage',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='vehiculo',
            name='marca',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='vehiculo',
            name='placa',
            field=models.CharField(max_length=9, null=True),
        ),
    ]