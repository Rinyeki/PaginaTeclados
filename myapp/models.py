from django.db import models

# Create your models here.
###################Categoria###################
class Categoria(models.Model):
    id_categoria = models.AutoField(db_column='id_categoria', primary_key=True) 
    nom_categoria = models.CharField(max_length=20, blank=False, null=False)

    def __str__(self):
        return str(self.nom_categoria)
###################Estado_pedido###################
class Estado_pedido(models.Model):
    id_estado = models.AutoField(db_column='id_estado', primary_key=True) 
    nom_estado = models.CharField(max_length=20, blank=False, null=False)

    def __str__(self):
        return str(self.nom_estado)
###################Producto###################
class Producto(models.Model):
    id_producto = models.AutoField(db_column='id_producto', primary_key=True) 
    nom_producto = models.CharField(max_length=30, blank=False, null=False)
    precio_producto = models.IntegerField(blank=False, null=False)
    stock = models.IntegerField(null=False, blank=False)
    id_categoria = models.ForeignKey('Categoria',on_delete=models.CASCADE, db_column='id_categoria')
    foto = models.ImageField(upload_to="images/",null=True,blank=True)

    def __str__(self):
        return str(self.nom_producto)
###################Pedido###################
class Pedido(models.Model):
    id_pedido = models.AutoField(db_column='id_pedido', primary_key=True) 
    total_pedido = models.FloatField(blank=False, null=False)
    id_estado = models.ForeignKey('Estado_pedido',on_delete=models.CASCADE, db_column='id_estado')

    def __str__(self):
        return str(self.id_pedido)
###################Producto_pedido###################
class Producto_pedido(models.Model):
    id_producto = models.ForeignKey('Producto',on_delete=models.CASCADE, db_column='id_producto')
    id_pedido = models.ForeignKey('Pedido',on_delete=models.CASCADE, db_column='id_pedido')

    def __str__(self):
        return str(self.id_producto)+" "+str(self.id_pedido)