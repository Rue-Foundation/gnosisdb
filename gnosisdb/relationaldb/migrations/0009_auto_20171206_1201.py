# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-12-06 12:01
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('relationaldb', '0008_auto_20171129_1500'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='market',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='orders', to='relationaldb.Market'),
        ),
        migrations.AlterField(
            model_name='outcometoken',
            name='event',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='outcome_tokens', to='relationaldb.Event'),
        ),
    ]
