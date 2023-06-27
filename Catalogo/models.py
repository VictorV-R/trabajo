# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Categoria(models.Model):
    codigo_categoria = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)


class Cosmetico(models.Model):
    codigo_cosmetico = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=20)
    precio = models.FloatField()
    stock = models.IntegerField()
    descripcion = models.TextField()
    imagen = models.ImageField(upload_to="Imagenes")

    def __str__(self):
        return self.nombre

class CosmeticoCategoria(models.Model):
    codigo_categoria = models.OneToOneField(Categoria, models.DO_NOTHING, db_column='codigo_categoria')
    codigo_cosmetico = models.OneToOneField(Cosmetico, models.DO_NOTHING, db_column='codigo_cosmetico')

class Empresa(models.Model):
    codigo_empresa = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return self.nombre


class EmpresaCosmetico(models.Model):
    codigo_empresa = models.OneToOneField(Empresa, models.DO_NOTHING, db_column='codigo_empresa')
    codigo_cosmetico = models.OneToOneField(Cosmetico, models.DO_NOTHING, db_column='codigo_cosmetico')


class Marca(models.Model):
    codigo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)

class MarcaCosmetico(models.Model):
    codigo_marca = models.OneToOneField(Marca, models.DO_NOTHING, db_column='codigo_marca')
    codigo_cosmetico = models.OneToOneField(Cosmetico, models.DO_NOTHING, db_column='codigo_cosmetico')

class OrdenCompra(models.Model):
    codigo_orden = models.IntegerField(primary_key=True)
    codigo_usuario = models.OneToOneField('Usuario', models.DO_NOTHING, db_column='codigo_usuario')
    fecha = models.DateField()

class OrdenDetalle(models.Model):
    codigo_orden = models.OneToOneField(OrdenCompra, models.DO_NOTHING, db_column='codigo_orden', primary_key=True)
    codigo_cosmetico = models.OneToOneField(Cosmetico, models.DO_NOTHING, db_column='codigo_cosmetico')
    cantidad = models.FloatField()

class Usuario(models.Model):
    codigo_usuario = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    sexo = models.CharField(max_length=20)
    fecha_nacimiento = models.DateField()
    direccion = models.CharField(max_length=50)
    telefono = models.CharField(max_length=20)
