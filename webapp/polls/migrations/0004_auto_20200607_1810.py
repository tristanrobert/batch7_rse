# Generated by Django 3.0.5 on 2020-06-07 16:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0003_auto_20200607_1744'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sentence',
            old_name='_vector',
            new_name='embedding_vector',
        ),
        migrations.RenameField(
            model_name='sentence',
            old_name='_weight',
            new_name='scoring_weight',
        ),
    ]
