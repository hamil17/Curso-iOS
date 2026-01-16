import Foundation

protocol Vehiculo {
    // Propiedad que podemos leer
    var marca: String { get }

    //Propiedad que podemos leer y escribir
    var velocidadActual: Double { get set }

    mutating func acelerar(delta: Double)
    
    func describir() -> String
}

// Extensiones: crear implementaciones por defecto en los protocolos o ampliar funcionalidades de una struct o class sin tener que crear herencia.
extension Vehiculo{
    func describir() -> String {
        "\(marca) circula a \(velocidadActual) km/h"
    }
}

// La struct coche se adhiere o implementa el protocol Vehiculo
struct Coche: Vehiculo {
    var marca: String
    var velocidadActual: Double
    
    mutating func acelerar(delta: Double) {
        velocidadActual += delta
    }
}

print("----- Coche -----")
var coche1 = Coche(marca: "BMW", velocidadActual: 180)
print(coche1.describir())


// Implementación de múltiples protocolos (para poder hacer algo parecido a la herencia multiple)

protocol Reproducible {
    func reproducir()
    func pausar()
    func detener()
}

protocol ContolVolumen{
    var volumen: Int {get set}
    func subirVolumen()
    func bajarVolumen()
}

class ReproductorMusical: Reproducible, ContolVolumen{
    enum EstadoInterno {
        case reproduciendo, pausado, detenido
    }
    
    var cancionActual : String = ""
    var volumen: Int = 50
    private var estadoInterno: EstadoInterno = .detenido
    
    func reproducir() {
        if estadoInterno == .reproduciendo{
            print("Detén primero la reproducción antes de resproducir de nuevo")
            return
        }
        print("Reproduciendo \(cancionActual)")
        estadoInterno = .reproduciendo
    }
    
    func pausar() {
        if estadoInterno == .detenido {
            print("Ya está detenido, no de puede pausar")
        }
        print("Reproductor pausado")
        estadoInterno = .pausado
    }
    
    func detener() {
        print("Reproductor parado")
        estadoInterno = .detenido
    }
    
    func subirVolumen() {
        if volumen < 100 {
            volumen += 10
        }
        print("Volumen a \(volumen)")
    }
    
    func bajarVolumen() {
        if volumen >= 10 {
            volumen -= 10
        }
        print("Volumen a \(volumen)")
    }
    
    func cambiarCancion(nuevaCancion:String){
        cancionActual = nuevaCancion
    }
}

print("\n----- Reproductor musical -----")
var miReproductor = ReproductorMusical()
miReproductor.cambiarCancion(nuevaCancion: "19 días y 500 noches")
miReproductor.reproducir()
miReproductor.subirVolumen()


// Uso de protocolos para poder comparar objetos de tipo struct o class
// Mediante el == de Swift con el protocolo 'Equetable'

struct Producto: Equatable {
    let nombre: String
    let precio: Double
}

let producto1 = Producto(nombre: "Carne", precio: 10)
let producto2 = Producto(nombre: "Carne", precio: 10)
print("Es igual el producto1 al producto2?", producto1 == producto2)


// Comparable nos permite usar el < o > para ordenar
struct OtroProducto : Equatable, Comparable {
    let nombre: String
    let precio: Double
    let otraVariable: Int
    
    // LHS: left has side, RHS: right has side (es decir, lados izq. y der. de la comparación de igualdad ==
    // En ese caso, para la comparación de igualdad usarremos el nombre y el precio, y la igualdad
    // Será cierta si coinciden tanto nombre como precio. Hemos omitido 'otraVariable'
    static func == (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        let comparacionNombre = lhs.nombre == rhs.nombre
        let comparacionPrecio = lhs.precio == rhs.precio
        return comparacionNombre && comparacionPrecio
    }
    static func < (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        return lhs.precio < rhs.precio
    }
}

let p1 = OtroProducto(nombre: "Carne", precio: 10, otraVariable: 0)
let p2 = OtroProducto(nombre: "Pescado", precio: 20, otraVariable: 0)
let p3 = OtroProducto(nombre: "Barra de pan", precio: 0.59, otraVariable: 0)

print("Es menor el precio de p1 que p2?",p1 < p2)

var productos = [p1, p2, p3]

// Ordenación 'in-place', factible gracias a la implementación del protocolo 'Comparable'
productos.sort()

print("\n----- Productos ordenados por precio -----")
for producto in productos {
    print("\(producto.nombre), \(producto.precio)" )
}
