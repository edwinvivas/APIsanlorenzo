# Generated by Django 2.2.6 on 2019-10-23 18:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('residentes', '0007_auto_20191023_1324'),
    ]

    operations = [
        migrations.AddField(
            model_name='residente',
            name='propiedad',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='residentes.Propiedad'),
            preserve_default=False,
        ),
    ]
