import Foundation
print(" ----- CLASES ----- ")
/*
 CLASES
 La idea de una clase es reutilizar propiedades, métodos, de otras estructuras para no reescribir código, para añadir funcionalidades.
 Es el fundamento de la POO
 */

class Vehiculo {
    var marca: String
    var modelo: String
    var velocidadActual : Int = 0
    
    // init es una funcion especial para inicializar los valores.
    // TODOS los valores de la calse deben estar inicializados al finalizar init
    // Observar que velocidadActual ya está inicializada en la definición, por ello no se incluye a continuación
    // Utilizamos self. para que no se confundan los parámetros del método con las propiedades de vehiculo
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
    
    func acelerar(delta: Int) {
        velocidadActual = velocidadActual + delta
    }
}

var miCoche = Vehiculo(marca: "Toyota", modelo: "Corolla")
print(miCoche.marca, miCoche.modelo, miCoche.velocidadActual)

miCoche.acelerar(delta: 10)
print("Mi coche va a", miCoche.velocidadActual, "km/h")

/*
    HERENCIA
    La clase VehiculoLujo HEREDA las propiedades y métodos de la clase vehículo,
    y además podemos añadirle propiedades y funciones adicionales o sobreescribir las funciones existentes
 */

class VehiculoLujo: Vehiculo {
    var asientosCalefactables: Bool = false
    override func acelerar(delta: Int) {
        velocidadActual = velocidadActual + delta * 2
    }
    func suscribirseAAsientosCalentitos(suscripcion: Bool) {
        asientosCalefactables = suscripcion
    }
}

var miCocheLujoso = VehiculoLujo(marca: "Maserati", modelo: "Turbo-Spin-Widomaker")
miCocheLujoso.acelerar(delta: 50)
miCocheLujoso.suscribirseAAsientosCalentitos(suscripcion: true)
print("Mi coche lujoso va a", miCocheLujoso.velocidadActual, miCocheLujoso.asientosCalefactables)


// Propiedades y métodos publicos o privados
// Por defecto, todas las propiedades y métodos de una clase son accesibles directamente
// Desde fuera de la clase, usando la notación '.' Ejemplo: vehiculo.velocidadActual
// Pero quizás querramos que para modificar la velocidad solo podamos hacerlo llamando a la funcion que actuliza lo velocidad
// a esto se le llama encapsulamiento

print("___ Clases privadas")

class Pantalla {
    // La declaración private(set) nos indica que no podemos modificar la variable desde fuera, pero si podermos leer su contenido
    private(set) var ancho : Int
    private(set) var alto : Int
    private(set) var pixels : Int = 0
    
    init(ancho: Int, alto: Int) {
        self.ancho = ancho
        self.alto = alto
        actualizarPixels()
    }
    
    func modificarTamanoPantalla(nuevoAncho: Int, nuevoAlto: Int) {
        ancho = nuevoAncho
        alto = nuevoAlto
        actualizarPixels()
    }
    
    // Función de uso interno, no se puede llamar desde fuera de la clase
    private func actualizarPixels(){
        pixels = ancho * alto
    }
}

var miPantalla = Pantalla(ancho: 2400, alto: 2000)
print(miPantalla.pixels)
miPantalla.modificarTamanoPantalla(nuevoAncho: 1920, nuevoAlto: 1080)
print(miPantalla.pixels)




// Arrays con clases ------
// Ejemplo que combina clase, struct y una colección de arrays:
// Una tienda con varios productos en stock.

struct Producto {
    let nombre: String
    var precio: Double
    var existecias: Int
    
    // Propiedad computada: se calcula cada vez que se accede a ella para leer su contenido
    var valorTotal: Double {
        return precio * Double(existecias)
    }
    
    func mostrarInfoProducto() -> String {
        "\(nombre), \(precio) euros, \(existecias) unidades, valor total: \(valorTotal) euros"
    }
}

class Tienda {
    let nombre : String
    private var productos: [Producto] = []
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func agregarProducto(producto: Producto) {
            productos.append(producto)
    }
    func mostrarInventario(){
        print("Inventario de tienda \(nombre):")
        for producto in productos {
            print(producto.mostrarInfoProducto())
        }
    }
    
    func valorTotalInventario() -> Double {
        // productos.reduce(0.0) { $0 + $1.valorTotal }
        var acumulado = 0.0
        for producto in productos {
            acumulado += producto.valorTotal
        }
        return acumulado
    }
    
    func AgregarExistencias(nombreProducto: String, existencias: Int){
        if let indice = productos.firstIndex(where: { $0.nombre == nombreProducto }) {
            productos[indice].existecias += existencias
        }
    }
}

print("----- TIENDA -----")

var producto1 = Producto(nombre: "Jabón de manos", precio: 1.99, existecias: 10)
var producto2 = Producto(nombre: "Café", precio: 2.99, existecias: 5)


var tienda = Tienda(nombre: "Mercaonda")
tienda.agregarProducto(producto: producto1)
tienda.agregarProducto(producto: producto2)
tienda.mostrarInventario()
print ("El valor del inventario de la tienda es de \(tienda.valorTotalInventario()) euros")
