from django.urls import path
from .views import index, soporte, teclados, keycaps, acerca, enviar_correo

urlpatterns = [
    path('', index, name='index'),
    path('soporte/', soporte, name='soporte'),
    path('teclados/', teclados, name='teclados'),
    path('keycaps/', keycaps, name='keycaps'),
    path('acerca/', acerca, name='acerca'),
    path('enviar_correo/', enviar_correo, name='enviar_correo'),
]
