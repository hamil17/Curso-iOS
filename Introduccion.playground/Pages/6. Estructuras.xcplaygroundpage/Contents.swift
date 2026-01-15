import Foundation

// ESTRUCTURAS
print(" ----- Estructuras ----- ")
struct Persona {
    var nombre: String
    var apellidos: String
    var edad: Int
}

var persona1 : Persona
persona1 = Persona(nombre: "Juan", apellidos: "Peréz", edad: 34)

print("La persona 1 se llama: ", persona1.nombre, persona1.apellidos, "y tiene", persona1.edad, "años")

// Acceso a los datos para modificarlos
persona1.edad = 35
print("Ahora tiene", persona1.edad, "años")

// Crear estructuras dentre de estructuras posibles
struct Direccion {
    var calle : String
    var numero : Int
    var codigoPostal : String
}
struct DatosPersonales {
    var nombre : String
    var edad : Int
    var direccion : Direccion
}

var direccion1 = Direccion(calle: "Calle Mayor", numero: 7, codigoPostal: "28080")

var datosPersona1 = DatosPersonales(nombre: "Ana", edad: 28, direccion: direccion1)

print(datosPersona1.nombre,", vive en", datosPersona1.direccion.calle, "número", datosPersona1.direccion.numero)


/*
Concepto: Las Strucs son tipos que se pasan por valor = duplicado
 Es decir, al asignarlas a otras variables, se crea un duplicado o copia de la variable
*/

var datosPersona2 = datosPersona1 // Hace un duplicado, que es independiente
datosPersona2.nombre = "Julio" // cambia el nombre a la persona2, No a persona1

print("Nombre de la persona 1", datosPersona1.nombre, " --  Nombre de la persona 2", datosPersona2.nombre)





// Structs con funciones
print(" ___Struct con funciones")

struct Calculadora {
    var a : Int
    var b : Int
    func sumar() -> Int {
        return a + b
    }
    func restar() -> Int {
        return a - b
    }
    // Podemos convertir los tipos enteros a Double o float
    // para que devuelva la división con decimales
    func dividir() -> Double {
        return Double(a) / Double(b)
    }
    // Si queremos modificar las variables internas de la estructura tenemos que usar 'mutating func'
    mutating func acumular(x:Int, y:Int){
        a = a + x
        b = b + y
    }
}

var MiCalculadora = Calculadora(a: 5, b: 2)
let resultadoSuma = MiCalculadora.sumar()
print (resultadoSuma)
print (MiCalculadora.restar())
print (MiCalculadora.dividir())
MiCalculadora.acumular(x: 5, y: 4)
print (MiCalculadora.a, MiCalculadora.b)
