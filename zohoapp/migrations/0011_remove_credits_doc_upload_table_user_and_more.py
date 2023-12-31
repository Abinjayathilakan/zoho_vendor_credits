# Generated by Django 4.1.7 on 2023-09-08 05:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0010_rename_customer_name_vendor_credits_bills_address_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='credits_doc_upload_table',
            name='user',
        ),
        migrations.RemoveField(
            model_name='credits_doc_upload_table',
            name='vendor',
        ),
        migrations.RemoveField(
            model_name='credits_mail_table',
            name='user',
        ),
        migrations.RemoveField(
            model_name='credits_mail_table',
            name='vendor',
        ),
        migrations.AddField(
            model_name='vendor_credits_bills_items_bills',
            name='account',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.DeleteModel(
            name='Credits_comments_table',
        ),
        migrations.DeleteModel(
            name='Credits_doc_upload_table',
        ),
        migrations.DeleteModel(
            name='Credits_mail_table',
        ),
    ]
