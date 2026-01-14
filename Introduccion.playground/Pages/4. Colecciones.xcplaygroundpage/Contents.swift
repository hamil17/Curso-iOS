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

