//: [Previous](@previous)

import Foundation

//o <T> obriga a colocar o mesmo tipo nos dois parametros
func swapTwoValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a=b
    b=temp
}

var someValue = 3
var anotherValue = 10

swapTwoValues(&someValue, &anotherValue)

struct Stack<Element>{
    var items: [Element] = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var nomes = Stack<String>()

nomes.push("teste 0")
nomes.push("teste 1")
nomes.push("teste 2")
nomes.push("teste 3")
nomes.push("teste 4")

print(nomes.items)

nomes.pop()
