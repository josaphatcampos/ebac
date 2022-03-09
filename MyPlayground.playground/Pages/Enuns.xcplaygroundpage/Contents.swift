//: [Previous](@previous)
// 1 - Qual o tipo de x, e o que será printado referente ao valor x?

// R - Acredito que já respondi em uma outra anterior. então o tipo é array de string. porque após a ordenação o map retorna a chave. ["john", "janes", "louis", "vincent"]

var language = "Objc"

let code = {[language] in
    print(language)
}

language = "Swift"

let newCode = code

newCode()

import Foundation

let d = ["john": 23, "janes": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0}
print(x)
    
    
// 2)-Criar uma Struct que aceite nome idade, e printar os valores de saida

struct Person {
    var nome:String
    var idade:Int
    mutating func printar(){
        print("Olá \(nome), você tem \(idade) anos")
    }
}

var pessoa = Person(nome: "Josaphat Campos", idade: 34)

pessoa.printar()

    
// 3)-Seguindo o exenplo acima, crie uma stored properties e nela calcule o IMC de uma pessoa.
// IMC= peso (altura x altura)

let toFix = NumberFormatter()
toFix.maximumFractionDigits = 2
toFix.minimumFractionDigits = 2

struct Pessoa {
    var nome:String
    var idade:Int
    var peso: Double
    var altura: Double
    var imc:Double {
        return peso / (pow(altura, 2.0))
    }
    mutating func getImc(){
        let imc:Double = peso / (pow(altura, 2.0))
        
        guard let imcformat = toFix.string(from: NSNumber(value: imc)) else {
            return
        }
        
        print("Olá \(nome), você tem \(idade) anos, pesa \(peso)Kg, mede \(altura)m e seu IMC é \(String(describing: imcformat))")
    }
}

var individuo = Pessoa(nome: "Josaphat Campos", idade: 34, peso: 122, altura: 1.87)

individuo.getImc()

print(individuo.imc)
