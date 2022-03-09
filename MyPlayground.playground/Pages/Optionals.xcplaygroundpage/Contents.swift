import Foundation
import UIKit

// 1) Qual das Seguintes atribuições são validas?

var name:String = "Josaphat"
//var age: Int = nil  - Esta é invalida
let kilometer: Float = 26.7
var lastName: String? = nil

// 2) Faça o unwrap com segurança com a constante, `number` e print com a condição mais legível.

var numericalString = "3"
//var number = Int(numericalString)
var number = Int(numericalString)

if let number = number {
    print("\(number) is the magic number.")
}

// 3) Se alterarmos o valor da variavel numericalString para "Cinco" e Executar o playground o que acontecerá?
    // a - Vai funcionar sem problemas.

// 4 -

var viewController = UIViewController()

if let tabBar = viewController.tabBarController?.tabBar {
    print("Aqui tem um tabBar")
}else{
    print("Aqui nao tem um tabBar")
}

