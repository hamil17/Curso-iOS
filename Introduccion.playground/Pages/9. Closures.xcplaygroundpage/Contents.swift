import Foundation

// Closures o Funciones anónimas
func saludar(nombre:String) -> String {
    return "Hola, \(nombre)!"
}

// Lo que está entre las llaves es un closure
let saludarClosure = { (nombre:String) -> String in
        return "Hola, \(nombre)!"
}

print(saludar(nombre: "Matias"))
print(saludarClosure("Matias"))
