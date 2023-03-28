//: [Previous](@previous)

import UIKit

//sessao shared é limitada e nao permite algumas configurações
let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess
sharedSession.configuration.allowsCellularAccess = false
sharedSession.configuration.allowsCellularAccess

let myDefaultConfiguration = URLSessionConfiguration.default
let epConfig = URLSessionConfiguration.ephemeral
let backConfig = URLSessionConfiguration.background(withIdentifier: "EBAC")

//sessao configurada permite mais personalizaçao
myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess

myDefaultConfiguration.allowsExpensiveNetworkAccess = true
myDefaultConfiguration.allowsConstrainedNetworkAccess = true

let myDefaultSession = URLSession(configuration: myDefaultConfiguration)
myDefaultSession.configuration.allowsCellularAccess

//configuração default nao permite alterar algumas coisas
let defaultSession = URLSession(configuration: .default)
defaultSession.configuration.allowsCellularAccess = false
defaultSession.configuration.allowsCellularAccess
