//: [Previous](@previous)

// Como eu não conseguir acessar o arquivo da aula, eu fiz tudo em um arquivo somente.
// Entendi tambem que deveria imprimir os valores assim que iniciada.

import Foundation

class Empregado{
    var nome: String
    var sobrenome: String
    var nomeCompleto:String {
        "\(nome) \(sobrenome)"
    }
    
    init(nome:String, sobrenome: String) {
        self.nome = nome
        self.sobrenome =  sobrenome
        
        print(nomeCompleto)
    }
}

var empregado = Empregado(nome:"Josaphat", sobrenome: "Campos")

var empregado2: Empregado

empregado2 = Empregado(nome:"João Paulo", sobrenome: "Campos")
