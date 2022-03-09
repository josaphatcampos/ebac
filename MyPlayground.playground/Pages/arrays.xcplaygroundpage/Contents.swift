import Foundation

// 1- Seguindo este array abaixo, qual valor é o output dessa função?

// R - Pêra

var frutas = ["Maça", "Banana", "Melao", "Pêra"]
var comida = frutas[3]

// 2- Seguindo o mesmo exercicio acima, agora inclua a fruta pera, troque de posição Banana e melao.
// no final conte quantas frutas tem no novo array

frutas.append("Pera")

//fiz dos dois jeitos aqui porque o xcode me da que ta depreciado o index of
var indexBanana = frutas.firstIndex(of: "Banana")
var indexMelao = frutas.index(of: "Melao")

if let indexBanana = indexBanana, let indexMelao = indexMelao{
    frutas.swapAt(indexBanana, indexMelao)
}

print("Tem \(frutas.count) frutas no array.")


// 3 - Pensando nesse codigo abaixo, qual é o tipo de x? E qual é o seu valor?

let d = ["john":23, "James":24, "Vicent": 34, "louis": 29]
let x = d.sorted{$0.1 < $1.1}.map{$0.0}

// R- Vai ser um array de string, porque no map voce retorna a chave, você tambem pode validar esse tipo com a função type of como exemplifiquei em baixo.
type(of: x)



