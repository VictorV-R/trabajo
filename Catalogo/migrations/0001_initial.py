# Generated by Django 3.2.5 on 2023-06-27 16:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('codigo_categoria', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Cosmetico',
            fields=[
                ('codigo_cosmetico', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=20)),
                ('precio', models.FloatField()),
                ('stock', models.IntegerField()),
                ('descripcion', models.TextField()),
                ('imagen', models.ImageField(upload_to='Imagenes')),
            ],
        ),
        migrations.CreateModel(
            name='Empresa',
            fields=[
                ('codigo_empresa', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Marca',
            fields=[
                ('codigo', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('codigo_usuario', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=50)),
                ('sexo', models.CharField(max_length=20)),
                ('fecha_nacimiento', models.DateField()),
                ('direccion', models.CharField(max_length=50)),
                ('telefono', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='OrdenCompra',
            fields=[
                ('codigo_orden', models.IntegerField(primary_key=True, serialize=False)),
                ('fecha', models.DateField()),
                ('codigo_usuario', models.OneToOneField(db_column='codigo_usuario', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='MarcaCosmetico',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_cosmetico', models.OneToOneField(db_column='codigo_cosmetico', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.cosmetico')),
                ('codigo_marca', models.OneToOneField(db_column='codigo_marca', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.marca')),
            ],
        ),
        migrations.CreateModel(
            name='EmpresaCosmetico',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_cosmetico', models.OneToOneField(db_column='codigo_cosmetico', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.cosmetico')),
                ('codigo_empresa', models.OneToOneField(db_column='codigo_empresa', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.empresa')),
            ],
        ),
        migrations.CreateModel(
            name='CosmeticoCategoria',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_categoria', models.OneToOneField(db_column='codigo_categoria', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.categoria')),
                ('codigo_cosmetico', models.OneToOneField(db_column='codigo_cosmetico', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.cosmetico')),
            ],
        ),
        migrations.CreateModel(
            name='OrdenDetalle',
            fields=[
                ('codigo_orden', models.OneToOneField(db_column='codigo_orden', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='Catalogo.ordencompra')),
                ('cantidad', models.FloatField()),
                ('codigo_cosmetico', models.OneToOneField(db_column='codigo_cosmetico', on_delete=django.db.models.deletion.DO_NOTHING, to='Catalogo.cosmetico')),
            ],
        ),
    ]
