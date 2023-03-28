//: [Previous](@previous)

import Foundation

let downloadSession = URLSession(configuration: .default)

let urlDownload = URL(string: "")!

let task = downloadSession.downloadTask(with: urlDownload){
    (location, response, error) in
    if let error = error{
        print(error.localizedDescription)
    }
    
    print("response => \(response)")
}

task?.resume()
