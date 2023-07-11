class Carrito:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        carrito = self.session.get("carrito")
        if not carrito:
            self.session["carrito"] = {}
            self.carrito = self.session["carrito"]
        else: 
            self.carrito = carrito
    
    def agregar(self, producto):
        id = str(producto.id_producto)
        if id not in self.carrito.keys():
            self.carrito[id] ={
                "id_producto": producto.id_producto,
                "nom_producto": producto.nom_producto,
                "precio" : producto.precio_producto,
                "acumulado": producto.precio_producto,
                "stock": 1,
            }
        else:
            self.carrito[id]["stock"] += 1
            self.carrito[id]["acumulado"] += producto.precio_producto
        self.guardar_carrito()
    
    def guardar_carrito(self):
        self.session["carrito"] = self.carrito
        self.session.modified = True

    def eliminar(self, producto):
        id = str(producto.id_producto)
        if id in self.carrito:
            del self.carrito[id]
            self.guardar_carrito()

    def restar(self, producto): 
        id = str(producto.id_producto)
        if id in self.carrito.keys():
            self.carrito[id]["stock"] -= 1
            self.carrito[id]["acumulado"] -= producto.precio_producto
            if self.carrito[id]["stock"] <= 0: self.eliminar(producto)
            self.guardar_carrito()
    
    def limpiar(self):
        self.session["carrito"] = {}
        self.session.modified = True 
    
    