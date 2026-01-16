import Foundation

// ARRAYS
// Es una colección en forma de una lista ordenada de valores del mismo tipo de datos.
// [1, 5, 10, -1, 0, 8]

var arrayVacio: [Int] = []
print(arrayVacio)
print("arrayVacio está vacío? \(arrayVacio.isEmpty)")

var arrayInts: [Int] = [1, 2, 3]
print(arrayInts)

print("Cuantos elementos tiene arrayInts: \(arrayInts.count)")

// Para añadir un elemento:
arrayInts.append(0)
print(arrayInts)

//o bien, podemos añadirlo así:
arrayInts += [10]
print(arrayInts)

// Podemos añadir varios elementos de una vez:
arrayInts += [-1, -2]
print(arrayInts)

// Para añadir (sin reemplazar) un elemento en una posición específica
arrayInts.insert(-100, at: 0)
print(arrayInts)

// Para borrar un elemento en una posición especifica
arrayInts.remove(at: 0)
print(arrayInts)

//Acceder a los elementos del array
let primerElemento = arrayInts[0]
print("El primer elemento es: \(primerElemento)")
print("El tercer elemento es: \(arrayInts[2])")

// Modificar un elemento en una posición concreta:
arrayInts[4] = -500
print(arrayInts)

// Iterar (Recorer la totalidad) sobre un array
for elemento in arrayInts {
    print(elemento)
}

// Iteración sobre indice y valor
for (indice, elemento) in arrayInts.enumerated() {
    print("El elemento \(indice) es: \(elemento)")
}

// Cuidado con salirse de los indices del array!
//Swift/ContiguousArrayBuffer.swift:691: Fatal error: Index out of range
//arrayInts[10]

// Para no salirnos nunca del array, preguntamos cuantos elementos tiene
print ("El array tiene \(arrayInts.count) elementos. El indice maximo accesible es \(arrayInts.count - 1)")


// SETS (Conjuntos)
// Almacena valores del mismo tipo sin elementos repetidos, es decir, cada valor solo puede aparecer una vez en el conjunto.
// Dentro del <> es donde definimos el tipo de datos
var conjuntoAnimales: Set<String> = ["Perro", "Gato", "Pez"]
conjuntoAnimales.count
conjuntoAnimales.isEmpty

// Insertar un elemento
conjuntoAnimales.insert("Lobo")
print(conjuntoAnimales)

// Si se insertan elementos repetidos, se queda como está
conjuntoAnimales.insert("Lobo")
print(conjuntoAnimales, "Los elementos repetidos no se insertan")

// Saber si el Set contiene un elemento dado
if conjuntoAnimales.contains("lobo") {
    print("Tenemos al lobo en el gallinero!")
}

// Iterar sobre un conjunto
for animal in conjuntoAnimales{
    print (animal)
}
print("--- Recorrido ordenado alfabeticamente ---")
for animal in conjuntoAnimales.sorted(){
    print (animal)
}


// [1,2,3]
// [2,3,4]
// Union = [1,2,3,4]
// Intersección = [2,3]
// Diferencia = [1,4]



// DICCIONARIOS - MAPS - Array asociativo en PHP

// Un diccionario contiene asociaciones entre claves y valores
// Cada clave tendrá asociado un valor
// Al definirlo, tanto las claves como los valores serán de un único tipo
var diccionarioVacio: [String: String] = [:]

var dicionarioDeNumeros : [Int: String] = [1:"uno", 2:"dos", 3:"tres"]

var otroDiccionarioDeNumeros : [String: Int] = ["uno" : 1, "dos" : 2, "tres":3 ]

var dadosDeAlta: [String:Bool] = ["Paco": true, "Antonio": false, "Juliana" : true]

print(dadosDeAlta)

diccionarioVacio.isEmpty
diccionarioVacio.count

// Leer un elemento usando la clave:
print ("Leer un elemento:")
print("Está paco dado de alta? \(dadosDeAlta["Paco"]!)")
print (dadosDeAlta["blblaibal"] ?? "No existe este usuario")

// Insertar, borrar, actualizar, valores de los diccionarios

// Insertar un nuevo valor (Si la clave no existe, la crea)
dadosDeAlta["Maria"] = true

// Actualizar el valor (si la clave existe, la modifica)
dadosDeAlta["Maria"] = false

// Borrar una clave-valor
dadosDeAlta["Maria"] = nil
// O bien:
dadosDeAlta.removeValue(forKey: "Antonio")

print(dadosDeAlta)

// Iterar sobre todo el diccionario
for (usuario, alta) in dadosDeAlta {
    if alta {
        print("\(usuario) está dado de alta")
    } else {
        print("\(usuario) no está dado de alta")
    }
}
