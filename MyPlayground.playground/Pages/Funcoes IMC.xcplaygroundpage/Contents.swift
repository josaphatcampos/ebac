import Foundation


func getImc(nome:String, pesoKg peso:Double, altMetros altura:Double) -> String{
    
    let toFix = NumberFormatter()
    toFix.maximumFractionDigits = 2
    toFix.minimumFractionDigits = 2
    
    
    let imc:Double = peso / (pow(altura, 2.0))
    
    return "Olá \(nome) seu IMC é \(toFix.string(from: NSNumber(value: imc))!) e você está \(imcSituation(imc))"
}

func imcSituation(_ imc:Double)->String{
    
    if(imc < 16){
        return "com Subpeso Severo"
    }
    else if (imc >= 16 && imc < 19.9){
        return "com Subpeso"
    }
    else if (imc >= 20 && imc < 24.9){
        return "Normal"
    }
    else if (imc >= 25 && imc < 29.9){
        return "com Sobrepeso"
    }
    else if (imc >= 30 && imc < 39.9){
        return "Obeso"
    }
    else{
        return "Obeso Mórbido"
    }
}


getImc(nome: "Josaphat", pesoKg: 122.800, altMetros: 1.87)
