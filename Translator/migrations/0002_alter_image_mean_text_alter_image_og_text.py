# Generated by Django 4.1 on 2022-10-08 05:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Translator', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='image',
            name='mean_text',
            field=models.CharField(default='not found', max_length=1000),
        ),
        migrations.AlterField(
            model_name='image',
            name='og_text',
            field=models.CharField(default='not found', max_length=1000),
        ),
    ]