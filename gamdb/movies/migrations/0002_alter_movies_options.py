# Generated by Django 4.1.7 on 2023-03-17 17:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='movies',
            options={'verbose_name': 'Movie', 'verbose_name_plural': 'Movies'},
        ),
    ]