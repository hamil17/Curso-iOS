import Foundation

// BUCLES FOR

// La variable "indice" va a valer desde 1 hasta 3
for indice in 1...3{
    print("Hola \(indice)")
}

// BUCLES WHILE

// El bucle se ejecuta hasta que no se cumpla la condición
var indice2 = 0
while indice2 != 5{
    print(indice2)
    indice2 += 1
    
}
print("Terminó el bucle while")

var seCumpleCondicion = false
var i = 0
while !seCumpleCondicion{
    print(i)
    if i == 5{
        seCumpleCondicion = true
    }
    i = i + 1
}
print("Terminó el segundo bucle while")



// BUCLE REPEAT
// Este se va a ejecutar SIEMPRE AL MENOS una vez

i = 0
repeat {
    print("Indice i vale \(i)")
    i = i + 1
} while i < 5
print("Terminó el bucle repeat-while")



// Un ejemplo que combina los condicionales con los bucles

let estaHelando = 0
let haceFresco = 10
let estaTemplado = 20
let haceCalor = 30
let noSalirDeCasa = 40

var temperatura = -5

for temperatura in -5...45{
    print("Temperatura en la calle: \(temperatura)")
    if temperatura <= estaHelando { // menor o ugual a 0 grados
        print("Está Helando! Ten cuidao al salir")
    } else if temperatura > estaHelando && temperatura <= estaTemplado {
        print("Ponte la rebeca")
    }  else if temperatura > estaTemplado && temperatura <= noSalirDeCasa {
        print("puedes ir en camiseta")
    } else if temperatura >= noSalirDeCasa{
        print("No salgas de casa")
    } else {
        print("hace otra temperatura")
    }
}


// Asignación mediante expresiones condicionales

let consejo = if temperatura <= estaHelando {
    "Abrígate al salir, está helando"
} else if temperatura == estaTemplado {
    "Está templado, puedes ir en manga corta"
} else {
    "Hace otra temperatura, no se que decirte que te pongas"
}
print(consejo)

// Switch: cuando queremos comparar entre múltiple  condiciones
// sin tener que usar estructuras if-else
let valor = 6
switch valor {
case 5:
    print("Vale 5")
case 3:
    print("vale 3")
case 5...10:
    print("vale entre 5 y 10")
default:
    print("vale otra cosa")
}

// Swift también tiene otros controles de flujo como 'cotinue' o 'break'



