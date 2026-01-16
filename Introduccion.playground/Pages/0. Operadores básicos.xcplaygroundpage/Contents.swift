import Foundation

var greeting: String = "Hello, playground"
var inicio = "Hola"

inicio = "adios"

print(inicio)

var constante = 10
constante = 5

var x = 5, y=10, z=5.5

var micolor: Int = 5
micolor = 10

let mitexto = "😅 emoji"

//Comentario de linea

/*Comentario
de
lineas */

let pi = 3.14
var numero = 5

numero + Int(pi)

let pisumado = pi + Double(numero)

let esverdadero = true
let esfalso = false

var micondicion = esverdadero && !esfalso

if micondicion {
    print("correcto")
}else{
    print("no es correcto")
}


let tupla1 = (1, "hola", "que tal") // como arrays pero fijos se queda así
print(tupla1.0)
print(tupla1.1)
print(tupla1.2)

let tupla2 = (codigo: 500, description: "Errorr!")
print("Mensaje devuelto: \(tupla2.description), con codigo de error: \(tupla2.codigo)")

//Variables Opcionales (optionals)
var respuestaOpcional: String? = "hola"
respuestaOpcional = nil

if respuestaOpcional == nil {
    print("El usuario no ha respoindido")
}

let datos: String? = nil
let altura: Int? = nil

// ?? Operador coalsce, da un valor por defecto en caso de que sea nil
let datosCompletos = "Nombre: Pepe, " + "Datos:" + (datos ?? " No hay datos")

print(datosCompletos)

print(altura ?? 100)

let miNumero : Int? = 5
let numeroFinal : Int

guard let numeroFinal = miNumero else{
    fatalError("Conversión no válida")
}

print(numeroFinal)

var constante1: Int

var a = 5.0, b = 10.0
var c : Double

c = -a / b
print(c)

// Esto es igual
//c = c + a
//c += a

var num1 = 3, num2 = 5
num1 == 3

//if num1 == num2 {
//    print("son iguales")
//}

"hola" == "hola"
"hola" == "Hola"

if num1 == num2 {
    print("con iguales")
}else {
    print("son diferentes")
}

var alturaTotal = 0
var margen = 10
var contenido = 50
let padding = true

alturaTotal = margen + contenido
if padding {
    alturaTotal = alturaTotal + 20
}

// Operador ternario (ternary)
alturaTotal = 0
alturaTotal = margen + contenido + (padding ? 20 : 0)
print(alturaTotal)


