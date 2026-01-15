import Foundation

// Enumeraciones: definir un conjunto de valores dentro de una estructura

enum DiasSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}

//Acceder a los datos

print("----- Enumeraciones -----")
// Crear una variable que usa el  enum Dias semana
var diaSemana = DiasSemana.sabado
var diaSemana2 : DiasSemana = .martes

//También de puede acceder de manera abreviada
diaSemana = .jueves

if diaSemana == .sabado || diaSemana == .domingo {
    print("Es fin de semana")
}


diaSemana = .domingo
switch diaSemana {
case .lunes, .martes, .miercoles, .jueves, .viernes:
    print("Es un dia entre semana")
case .sabado, .domingo:
    print("Es un dia de fin de semana")
}

// Raw values: asignar un valor dentro de un enum

enum DiasSemanaConNombre: String{
    case lunes = "Lunes 🦥"
    case martes = "Martes"
    case miercoles = "Miércoles"
    case jueves = "Jueves"
    case viernes = "Viernes"
    case sabado = "Sábado 🎉"
    case domingo = "Domingo"
}

enum Posiciones : Int {
    case primero = 1
    case segundo = 2
    case tercero = 3
}

var diaSemanaNombre = DiasSemanaConNombre.sabado
//para aceder al 'raw value'
print("diaSemanaNombre está asociado al valor del enum",diaSemanaNombre.rawValue)


let posicion = Posiciones.primero
print("Estoy en la posición:", posicion.rawValue, "🏆")


