import UIKit
import Darwin

"Documentación oficial"
"https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos"

//Otros
//1 option + click definicion de tipo
//2 option + ? para backsalsh


                                        //Fundamentos

//Constantes y variables
//variable es que varia no es estatica a diferencia del let que es estatica
var josuenombre = "Puedo cambiar"
let josueestatico = "No puedo cambiar"
//multiples declaraciones
var josueuno = "10",josuedos = 20, josuetres = false

//Definiciones de tipo
var josuetipostring : String
josuetipostring = "agregar info"

//Nombrar constantes y variables
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//Imprimir variables y constantes
//terminator evita que se muestre en otra linea
print("primera impresion",terminator: "")
print(josuedos)
//otros 2  option + ? para backsalsh
print("valor de josuedos \(josuedos)")

//punto y coma
// separador de 2 declaraciones
var josuedecuno:String = "UNO";print("josuedecuno valor \(josuedecuno)")

//Enteros
//Hay enteros con signos y sin signos
//sin signos son los uint no puede ser negativo
var uintvariablemax = UInt8.max
var uintvariablemin = UInt8.min

//con signos son los int
//por defecto toma el bit dependiendo de la plataforma
var intvariablemax = Int8.max
var intvariablemin = Int8.min

//Numeros de punto flotante
//Double y float ya que posen decimales

//Inferencia de tipo
//El mismo swift infiere el tipo de dato que le estas pasando

//Conversion de tipo númerico
//conversion de numeros

//Enteros
//Tiene que ser del mismo tipo sino no funciona
var numerotranqui :UInt16 = 8
var numerouint: UInt8 = 20
var suma = numerotranqui + UInt16(numerouint)

//decimales
var nodecimal:Int = 10
var decimal:Double = 2.22
var sumadecimales = nodecimal + Int(decimal)

//Boleanos
//Se pueden utilizar para condiciones
var boleanotrue = true

if boleanotrue {
    print("esto es verdadero :D")
}
let i = 1
if i==1{
    print("es verdadera la condicion 1 = 1")
}

//Tuplas
//tiene que tener la misma estructura si se va a asignar a otro
var tuplainial = ("valor uno string",20)
print(tuplainial.0)
print(tuplainial.1)

var (tupla1,tupla2) = tuplainial
print(tupla1)
print(tupla2)

//el _ es para que ignore sin embargo es necesario para que cumpla la estructura
var (tupla3,_) = tuplainial
print(tupla3)

//opcionales
//sirve para el caso que su valor este ausente
var convertirstring = "423"
//Inferencia de tipo mas la opcional
//se crea la opcional ya que no se sabe si en caso no retorna un numero
//si no funciona retorna nil
var convertiropcional = Int(convertirstring)

//if y extraccion forzada
if convertiropcional != nil{
    print("Si no es nil entonces entra")
}

//vinculacion opcional
if let noesnulo = convertiropcional{
    print("El valor de la opcinal es \(noesnulo)")
}

var stringalterno = "12"
if let nosoynulo = convertiropcional,let _ = Int(stringalterno){
    print("no son nil valor uno \(nosoynulo)")
}

//Opcionales extraídos de forma implícita
var variableopcional : String? = "prueba uno"
var variableimplicita = variableopcional!
print("viable opcional \(variableimplicita)")

var variableasumida : String! = "a"
var variableimplicitados : String = variableasumida
print("variable dos \(variableimplicitados)")


                                //OPERADORES BASICOS

//video uno

//Operadores aritmeticos
// + - * % /
var nombreu = "yo soy "
var nombred = "Tu padre"
var nombrecompues = nombreu + nombred
print(nombrecompues)

var nueve = 9
9 % 4

//Operadores de asignación compuesta
var a = 2
var b = 3
a -= 1
b += 1

//operadores de comparacion
// tambien compara string segun su valor
if a < b {
    print("a es menor a b ")
}
//comparacion de tupla
(1,"aea") < (2,"llora")

//operador ternario
var ar = 100
ar == 10 ? true : false

//operador nil-coalesing
//casi igual al ternario solo que verificar nil
var aea: String? = "joo"

var valor = aea ?? "no tiene valor "

//operadores de rango
for index in 1...4{
    print(index)
}

var arraycreado : [String] = ["variableuno","variabledos","variabletres"]

for indexdos in arraycreado[1...2]{
    print("var \(indexdos)")
}

arraycreado.contains("variableuno")


                                //CADENAS Y CARACTEREES

//inicializar un string
var josue = String()
//EMPTY

//Se puede hacer un for de un string ya que son cadena de caracteres
//Se puede agregar unicode
//Si se hace count de un string que contiene un emoji no cuenta al emoji

// insertar datos en mi string, obtener los index y hacer busqueda con obtencion index



                                //tipos de colecciones

//array normal como lo conocemos
//set son conjuntos se puede ejecutar funciones de conjunto
//diccionario como se conoce

//si se repite un valir simplmente se muestra 1 vez
//conjuntos solo insertar y quitar no se puede pedir algo concreto
var variableset : Set = ["aea","aea2","aea3","aea"]

//diccionario
var vardiccionario : Dictionary = ["aea":"jeje","aea2":"jejej"]

var namesOfIntegers: [Int: String] = [:]
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
airports["LHR"] = "London"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}


                            //FLUJOS DE CONTROL

//if
//guard let aea = nombre["joss"] else { return }
//while      repeat{}while
//break continue
//for in   for con tuplas for con rangos
//switch  switch con tuplas - con rangos


                            //FUNCIONES

// func nombrefuncion(parametro :String)-> retorno{}
// func nonmbre(pam :stirng) {}   sin retorno

//func nombrefunc(oblinom nom: String) -> (aea,aea2){}
//oblinom es para afuera y nom es para adentro de la funcion
//      nombrefunc(oblinom : "valor")

func functranqui(_ nombrevariable: inout Int){
        nombrevariable += 2
}

var valorinicial:Int = 5
functranqui(&valorinicial)
print(valorinicial)


//variable como funcion
func sumar(_ uno:Int,_ dos :Int)-> Int{
    return uno + dos
}
var variablefuncion : (Int,Int)-> Int = sumar
variablefuncion(1,2)

//se pueden agregar parametros por defecto
//funcion con parametro de rango

func funrango(_ variablerango : Int...)->Int{
    var otravirable :Int = 0
    for varia in variablerango{
        otravirable += varia
    }
    return otravirable
}

funrango(1,2,3,4,5,6)

//variable de tipo funcion

func suma(_ varua:Int,_ vardo:Int)->Int{
    return varua + vardo
}
suma(1,2)

var funcvar : (Int , Int) -> Int = suma
funcvar(2,3)

//variable funcion dentro de funcion

func varfunco(_ othervarfun :(Int,Int)->Int,_ sum1:Int,_ sum2:Int)->Int{
    return othervarfun(sum1,sum2)
}
varfunco(suma, 2,1)

//otra forma
var e : Int =  varfunco({ A,B in return A - B}, 5, 2)
print(e)

//funcion con retorno de funcion
func funto(_ valorint : Int) -> Int{
    return valorint + 1
}

func funto2(_ valorint : Int) -> Int{
    return valorint + 2
}

func funcionretornofuncion(bol : Bool)->(Int)->Int{
    return  bol ? funto : funto2
}
var numverificar = 1
var valoree : (Int)->Int = funcionretornofuncion(bol: numverificar<2)
print(valoree(2))

//funciones anidadas
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }

    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}


                                    //CLOUSURES
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)


                                //Enumeraciones

enum Somos: CaseIterable{
    case hoy_tampocoes,hoy_parecequesi
    case hoy_es
    case hoy_noes_pipipi
}

var numerosomos = Somos.allCases.count

//Es como una instanciacion antes de cambiarlo, sino no vale el " . "
var otros_somos = Somos.hoy_es
otros_somos = .hoy_noes_pipipi

var somoss = Somos.hoy_noes_pipipi

switch somoss{
case .hoy_es:
    print("somos")
case .hoy_noes_pipipi:
    print("PIPIPI")
default:
    print("no causa no")
}

for tipsodesomos in Somos.allCases{
    print(tipsodesomos)
}

//valores asociados
enum Tiposdedocumentos{
    case dni(String)
    case pasaport(String)
}

var tiposdedocumentos = Tiposdedocumentos.dni("74044830")

switch tiposdedocumentos{
    
case .dni(let dni):
        print("Mi dni es \(dni)")
    
case .pasaport(let pasa):
        print("mi pass es \(pasa)")
    
}

//valores brutos
//En string por defecto devuelve su mismo nombre, con los numeros solo se suma 1
enum valoresnumericos: String{
    case num1 = "aea", num2,num3,num4
}

print(valoresnumericos.num4.rawValue)


                            // clases y estructuras

struct Aea{}
class Aea2{}

//El struc probre un constructor
struct Reso{
    var numerouno = 1
    var ancho = 2
}

class vid {
    var res = Reso()
    var numsum = 0
    var texto = "soy el texto"
    var sitrngf:String?
}

var vide = vid()

print(vide.res.ancho)
var resoo = vid.init().res.ancho


                                // PROPIEDADES

//Valores de la clase o structura

struct FixedLengthRange {
    var firstValue: Int
    let length: Int = 1
}

//Tipo referencia
//Se tiene que difinir con la ? o asignar un valor, no funciona si es let
//Con let si o si se tiene que asignar un valor
class FixedLengthRangeAea {
    
    var instanciades = FixedLengthRange(firstValue: 1)
    var firstValuea:  String?
    let lengtha: String  = "aeac"
    
}

// Al declararlo let no puedes cambiar ya las propiedades
//let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property

var rangeOfFourItems = FixedLengthRange(firstValue: 0)
rangeOfFourItems.firstValue = 6
print(rangeOfFourItems.firstValue)

var rangeOfFourItemsto = FixedLengthRangeAea()
print(rangeOfFourItemsto.lengtha)

let rangeother = FixedLengthRangeAea()
rangeother.firstValuea = "a ver v: "
//En este caso no es peligroso poner el ! ya que se sabe que esta otro valor
//Se debe agregar ya que la propiedad es opcional, y no tiene valor asinado
print(rangeother.firstValuea!)
print(rangeother.instanciades.firstValue)

//Propiedades almacenadas perezosas

class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    //Util cuando depende de factores externos
    //cuando tarde en inicializarse, como datos por ejemplo
    //Datamanager no crea a dataimporter cuando se instancia, el solo se crea
    lazy var importer = DataImporter()
    var data: [String] = []
    // the DataManager class would provide data management functionality here
}

let manager = DataManager()

manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created

print(manager.importer.filename)
// the DataImporter instance for the importer property has now been created
// Prints "data.txt"

//propiedades calculadas
// se puede hacer get y set
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)

            return Point(x: centerX, y: centerY)
        }

        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center

square.center = Point(x: 15.0, y: 15.0)

print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"


//Propiedades calculadas de solo lectura
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)

print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"



//Observadores de la propiedas
//willset
//didset
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }

        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps


//Envolturas de propiedad

@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }

        set { number = min(newValue, 12) }
    }
}

struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()

print(rectangle.height)
// Prints "0"

rectangle.height = 10

print(rectangle.height)
// Prints "10"

rectangle.height = 20

//toma el maximo valor
print(rectangle.height)
// Prints "12"


struct SmallRectanglet {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()

    var height: Int {
        get { return _height.wrappedValue }

        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }

        set { _width.wrappedValue = newValue }
    }
}



                                //Metodos

// En una clase no te piden el self y mutating en la estructura si
class pruebametodos{
    
    var variavle = 0
    
    func incrementar(){
        variavle += 1
    }
    
    func incrementarotro(by otroincrementador : Int){
        variavle += otroincrementador
    }
}

var priueb = pruebametodos()
priueb.incrementar()
priueb.variavle
priueb.incrementar()
priueb.variavle

//modificaciones de valor
struct Pointw {
    var x = 0.0, y = 0.0

    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Pointw(x: 1.0, y: 1.0)

somePoint.moveBy(x: 2.0, y: 3.0)

print("The point is now at (\(somePoint.x), \(somePoint.y))")
// Prints "The point is now at (3.0, 4.0)"

                    
                        //protocolos
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

//Protocolos deben tener si o si un get o un get y set
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
    
  }

  let john = Person(fullName: "John Appleseed")
print(john.fullName)
  // john.fullName is "John Appleseed"





aea















        






















































 












































































