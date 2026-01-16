import Foundation

// Lista de tareas

enum Prioridad : Int {
    case baja = 1
    case media = 2
    case alta = 3
}

enum Estado : String {
    case pendiente = "Pendiente"
    case completada = "Completada"
}

struct Tarea {
    let id : Int
    var titulo : String
    var prioridad : Prioridad
    var estado : Estado
    var description: String {
        return "\(id). \(titulo) - Prioridad: \(prioridad) - Estado: \(estado.rawValue)"
    }
}

class GestionTareas {
    var listaTareas : [Tarea] = []
    private var contadorId: Int = 0
    
    func agregarTarea(titulo:String, prioridad:Prioridad) {
        contadorId = contadorId + 1
        let nuevaTarea = Tarea(id: contadorId, titulo: titulo, prioridad: prioridad, estado: .pendiente)
        listaTareas.append(nuevaTarea)
    }
    func listarTareas() {
        // Aquí usarás control de flujo y closures
    }
    func completarTarea() {
        // Aquí buscarás la tarea y cambiarás su estado
    }
    func resumenTareas() {
        // Operadores y strings para contar pendientes/completadas
        
    }
}


GestionTareas.agregarTarea("Hacer deporte", prioridad: .alta)
