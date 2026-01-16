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

var coche1 = Coche(marca: "BMW", velocidadActual: 180)
print(coche1.describir())
