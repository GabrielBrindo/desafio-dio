import UIKit

//criar dois projetos no playground usando o xcode
//- Para o primero projeto aplicar o Paradigma de Programação Orientada a Objetos
//- No segundo proieto. aplicar o Paradigma de Programação Orientada a Protocolos
//Para ambos os projetos exnlorar os seguintes conceitos:
//- Controles de Fluxos
//_ Coleções
//_ Funções e Closures
//- enuns e Structs
//- Concorrências

protocol Veiculo {
    var numeroDeRodas: Int { get }
    var motorizado: Bool { get }
}

class Carro: Veiculo {
    
    var nome: String
    var tipo: String
    var numeroDeRodas: Int = 4
    var automatico: Bool = false
    var motorizado = true
    
    init (nome: String, tipo: String) {
        self.nome = nome
        self.tipo = tipo
    }
    
}

class Bicicleta: Veiculo {
    var tipo: String
    var acentos: Int = 1
    var numeroDeRodas = 2
    var motorizado = false
    
    init(tipo: String) {
        self.tipo = tipo
    }
}

let camaro = Carro(nome: "Camaro", tipo: "esportivo")
let jipe = Carro(nome: "Jipe", tipo: "offroad")
let fusca = Carro(nome: "Fusca", tipo: "compacto")

let montainBike = Bicicleta(tipo: "offroad")
let speed = Bicicleta(tipo: "corrida")

let carros: [Carro] = [camaro, jipe, fusca]
let bikes: [Bicicleta] = [montainBike, speed]


func acelerando() {
    for carro in carros {
        print("Acelerando meu \(carro.nome)")
    }
}

acelerando()

var veiculos: Set<String> = ["bicicleta", "carro", "jegue", "moto", "triciclo"]

print ("Eu conheço \(veiculos.count) veiculos")

if veiculos.isEmpty {
    print("só ando a pé")
}else {
    print("vou pra qualquer lugar")
}

var motos: [String] = []

func adicionarMotos()-> [String] {
    var moto: [String] = []
    for i in 1...20 {
        let i = "moto\(i)"
        moto.append(i)
    }
    return moto
}

var addMotos: [String] = adicionarMotos()
motos.append(contentsOf: addMotos)
print (motos)

func adicionarMaisMotos() async {
    for i in 1...100 {
        print ("moto\(i)")
    }
}

await adicionarMaisMotos()

