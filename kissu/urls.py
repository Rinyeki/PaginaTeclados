from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from django.conf.urls.static import static

from myapp.views import agregar_producto, eliminar_producto, restar_producto, limpiar_carrito

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('myapp.urls')),
    path('agregar/<int:id_producto>/', agregar_producto, name='Add'),
    path('eliminar/<int:id_producto>/', eliminar_producto, name='Del'),
    path('restar/<int:id_producto>/', restar_producto, name='Sub'),
    path('limpiar/', limpiar_carrito, name='CLS'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)