import Foundation

// Closures o Funciones anónimas
func saludar(nombre: String) -> String {
    return "Hola, \(nombre)!"
}

// Lo que está entre las llaves es un closure
let saludarClosure = { (nombre: String) -> String in
    return "Hola, \(nombre)!"
}

print(saludar(nombre: "Matias"))
print(saludarClosure("Matias"))
// por esto de llama función anonima: no es decesario darle nombre
print({ (nombre: String) -> String in return "Hola, \(nombre)!" })

// notación: de la más explícita a la más abreviada
let closure1 = { (a: Int, b: Int) -> Int in
    return a + b
}
let closure2 = { (a: Int, b: Int) in
    return a + b
}

//También puede inferir los tipos de los parámetros
let closure3: (Int, Int) -> Int = { a, b in
    return a + b
}

//usar argumentos abreviados ($0 $1)
let closure4: (Int, Int) -> Int = {
    return $0 + $1
}

// La forma más breve: cuando es una sola expresión, no hace falta return
let closure5: (Int, Int) -> Int = { $0 + $1 }

let closure6: (Int, Int) -> Int = (+)

print(closure1(2, 3))
print(closure5(2, 3))

// Funciones que reciben los closures como parámetro
func procesarNumeros(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}
let sumar = { (x: Int, y: Int) -> Int in return x + y }

print(procesarNumeros(2, 4, operacion: sumar))

// Podemos hacerlo como función anonima
procesarNumeros(2, 4, operacion: { x, y in x + y })

// idem con argumentos abreviados
procesarNumeros(2, 4, operacion: { $0 + $1 })

// Trailing closures: cuando la función que se pasa es el ULTIMO  parámetro
print(procesarNumeros(2, 5) { $0 * $1 })

// Ejemplos de uso de los trailing closures en las colecciones
//let numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let numeros = Array(1...10)

//print(numero)
print(numeros)

// Filtrar (Eliminar) los que son mayores que 5
let menoresQue5 = numeros.filter {$0 < 5}
print(menoresQue5)

// Mapear valores
let numerosAlCuadrado = numeros.map {$0 * $0}
print(numerosAlCuadrado)
let numerosString = numeros.map {String($0)}
print(numerosString)

var numerosVarios = [3, 1, 5, 0, 1, 6, 8, 11, -1, 4]
let ordenadosMenorMayor = numerosVarios.sorted()
print(ordenadosMenorMayor)
let ordenadosMayorMenor = numerosVarios.sorted{ $0 > $1 }
print(ordenadosMayorMenor)
// Misma forma que { $0 > $1 }, pero abreviada
print(numerosVarios.sorted(by: >))
