import Foundation
//
//var edadUsuarios: [String: Int] = [
//    "Pepe" : 18,
//    "juan" : 20,
//    "Maria" : 22,
//    "Juana" : 24,
//    "Ivan" : 26,
//    "Carla" : 30
//]
//
//print(edadUsuarios)
//
//for (usuario, edad) in edadUsuarios {
//    print(usuario, "tiene", edad, "años")
//}


// to do list
// Array tareas

//print(tareas)
var tareas: [[String : String]] = []

@MainActor func agregaTarea(titulo:String, prioridad: String){
    let nuevaTarea : [ String : String ] = [
        "titulo" : titulo,
        "prioridad" : prioridad
    ]
    tareas.append(nuevaTarea)
}

agregaTarea(titulo: "Hacer la compra", prioridad: "Alta")
agregaTarea(titulo: "Hacer la colada", prioridad: "Media")
agregaTarea(titulo: "Estudiar", prioridad: "Alta")

for tarea in tareas {
    if let titulo = tarea["titulo"] {
        let prioridad = tarea["prioridad"]
        print(" La tarea \(titulo) es de prioridad \(prioridad ?? <#default value#>)")
    }
}
