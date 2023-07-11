from django.shortcuts import redirect, render, HttpResponse
from myapp.carrito import Carrito
from myapp.models import Producto
from django.core.mail import send_mail
from django.conf import settings

def index(request):
    return(render(request, 'index.html'))

def soporte(request):
    return(render(request, 'Soporte.html'))

def teclados(request):
    productos = Producto.objects.all()
    return(render(request,  'teclados.html', {'productos':productos}))

def keycaps(request):
    productos = Producto.objects.all()
    return(render(request, 'keycaps.html', {'productos':productos}))

def acerca(request):
    return(render(request, 'aboutUs.html'))

def agregar_producto(request, id_producto):
    carrito = Carrito(request)
    producto = Producto.objects.get(id_producto=id_producto)
    carrito.agregar(producto)
    return redirect("teclados")

def eliminar_producto(request, id_producto):
    carrito = Carrito(request)
    producto = Producto.objects.get(id_producto=id_producto)
    carrito.eliminar(producto)
    return redirect("teclados")

def restar_producto(request, id_producto):
    carrito = Carrito(request)
    producto = Producto.objects.get(id_producto=id_producto)
    carrito.restar(producto)
    return redirect("teclados")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("teclados")

def enviar_correo(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        email = request.POST.get('email')
        mensaje = request.POST.get('mensaje')

        # Envío del correo electrónico
        send_mail(
            'Nuevo mensaje de contacto',
            f'Nombre: {nombre}\nEmail: {email}\nMensaje: {mensaje}',
            settings.DEFAULT_FROM_EMAIL,
            [settings.DEFAULT_FROM_EMAIL],
            fail_silently=False,
        )

        return render(request, 'confirmacion.html')

    return render(request, 'formulario.html')