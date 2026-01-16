import Foundation

var miString = "Hola"
print(miString + " mundo")


let cadenaMultilinea = """
    
    Hola que tal
    
    Espero que todo bien
        Aqui unos espaciados
    """
print(cadenaMultilinea)

var cadenaConEscapes = "\nHola que tal \nyo bien, \"entrecomillado\""
print(cadenaConEscapes)

var cadenaVacia = ""

if cadenaVacia == "" {
    print("vacia")
}

if cadenaVacia.isEmpty {
    print("vacia")
}

var cadenaMutable = "Hola"
cadenaMutable = cadenaMutable + " y adios"

// Interpolación de cadenas
let caracter1 : Character = "H"
print(type(of: caracter1))

var cadenaConVariables: String
cadenaConVariables = "Hola mi primer caracter es : \(caracter1)"

cadenaConVariables = "2+2 es : \(2+2)"
print(cadenaConVariables)

let esAdulto = true
print("Antonio es \(esAdulto ? "adulto" : "niño")")

// Concatenación
print("Hola" + " 👋🏽 " + "que" + " " + "tal. Antonio es \(esAdulto ? "adulto" : "niño").")

let cadena2 = "12345abcde"
let cadena3 = "12345ABCDE"

print (cadena2.uppercased() == cadena3)
print (cadena3.lowercased())



