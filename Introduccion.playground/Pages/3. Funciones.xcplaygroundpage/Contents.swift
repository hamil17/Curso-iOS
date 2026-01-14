import Foundation

// FUNCIONES

func saludar() {
    print ("Hola")
}
saludar()

// El scope de la variable que pasamos como parametro
// solo es válido dentro del ámbito de la función, o sea, entre las llaves {}
func saludarA(persona:String){
    print("Hola \(persona)")
}
saludarA(persona: "Marcos")

// Si al llamar a la función queremos omitir el nombre del parámetro, lo hacemos usando _
func saludarAOtraPersona(_ persona: String){
    print("Hola \(persona)")
}
saludarAOtraPersona("Antonio")


//Funciones que devuelven un valor y reciben varios parámetros (separados por comas)
func sumar(a:Int, b:Int) -> Int {
    var resultado = a + b
    return resultado
}
print (sumar(a: 10, b: 5))

// Funciones que devuelven varios valores
// Para ello pordemos usar las tuplas
// Ejmeplo: una función que calcula la división entera y el resto.
func calculaDivisionResto(dividendo: Int, divisor: Int) -> (division: Int, resto: Int){
    let  division = dividendo / divisor
    let resto = dividendo % divisor
    return (division, resto)
}

let resultado = calculaDivisionResto(dividendo: 10, divisor: 3)
print("La división vale: \(resultado.division) y el resto vale: \(resultado.resto)")


// Funciones con return implicito
func saludo2 (_ persona: String) -> String{
    //    return "Hola de nuevo, \(persona)" // Esta opciónes si uso el return de forma normal
    "Hola de nuevo, \(persona)"
    // Es lo mismo que usando el return. Es válido SOLO cuando la función tiene un una única expresión
}
print(saludo2("Patricia"))

// Funciones con parametros por defecto
// En este caso, el parámetro serEducado toma el valor true salvo que se especifique otro valor al llamar la función
func saludarEducadamente(nombre:String, serEducado: Bool = true){
    if serEducado {
        print("Saludos, estimado \(nombre)")
    } else {
        print("Déjame en paz, \(nombre)")
    }
}
saludarEducadamente(nombre: "María")
saludarEducadamente(nombre: "Ana", serEducado: false)



// Funciones con parámetros variables (cero o N parámetros), usando la sintaxis "..."

func calcularSuma(_ numeros: Int...) -> Int {
    var acumulado = 0
    // si hemos llamado a la función con parametros (1, 3, 5)
    // La variable 'numero' cogerá cada uno de los valores: 1, 2, 3
    for numero in numeros {
        acumulado = acumulado + numero
    }
    return acumulado
}
print(calcularSuma(1, 2, 3, 4, -5))



//Funciones como variables y tipos de función

//func sumar(a:Int, b:Int) -> Int {
//    var resultado = a + b
//    return resultado
//}
//print (sumar(a: 10, b: 5))

func restar (a: Int, b: Int) -> Int { a - b }

// funcionGenerica es una variable a la que le puedo asignar funciones que reciban dos parametros de entrada tipo Int y uno de salida tipo Int, dado que está definida como (Int, Int) ->Int
var funcionGenerica: (Int, Int) -> Int
funcionGenerica = sumar
print("Llama a la funcionGenerica cuando está asignada a sumar")
print(funcionGenerica(3, 3))

funcionGenerica = restar
print("Llama a la funcionGenerica cuando está asignada a restar")
print(funcionGenerica(3, 3))


// Se pueden pasar funciones como parámetros a otras funciones
func usarFuncionMatematica(_ funcion: (Int, Int) -> Int, a: Int, b:Int) -> Int{
    return funcion (a,b)
}
usarFuncionMatematica(sumar, a: 2, b: 3)
usarFuncionMatematica(restar, a: 5, b: 3)
