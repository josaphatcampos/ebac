//: [Previous](@previous)

import Foundation

// 1. O que são Generic e quais problemas eles resolvem

// R.1-- Por exemplo uma função que soma dois valores se tiparmos essa função como int, limitamos a soma de inteiros, por outro lado se colocarmos o generics a gente pode criar uma função que consegue somar inteiros, double, floats. Isso já resolve um problema que é a repetição de codigos.

// 2. De um exemplo de uso de generics

func soma<T: Numeric>(_ a: T, _ b: T) -> T{
    return a + b
}

soma(10,5)
soma(2.3,3.5)

// 3. Quais os cuidados que se deve tomar, ao usar políticas para caches?
// R. Cuidado com a politica utilizada para que o cache seja atualizado quando necessário, e utilizar o cache-policy adequado para sua necessidade.

// 4. Dê um exemplo de uso de Closure com escaping e sem escaping, observando o uso do weak self

func executasoma(_ closure:()->Void){
    print("Iniciando a closure sem escape em: \(Date())")
    closure()
    print("Terminando a closure sem escape em: \(Date())")
}

executasoma(({
    print("fazer algo aqui como uma soma: \(20 + 39)")
}))


class Somar{
    var valor1:Int
    var valor2:Int
    
    init(_ a:Int, _ b:Int){
        valor1 = a
        valor2 = b
    }
    
    func devolvesoma(_ a:Int, _ b:Int, handler: @escaping ((Int)->Void)){
        let soma = a + b
        handler(soma)
    }
    func printaresultado(){
        self.devolvesoma(self.valor1, self.valor2){ [weak self] (soma) in
            
            print("aqui eu consigo pegar o resultado da soma de \(self!.valor1) + \(self!.valor2) que é: \(soma)")
            
        }
    }
}

let resultado = Somar(3, 2);

resultado.printaresultado()

