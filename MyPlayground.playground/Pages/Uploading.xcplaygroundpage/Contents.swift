//: [Previous](@previous)

import Foundation
import UIKit

let image = UIImage(named: "image.jpeg")
let imageData = image!.jpegData(compressionQuality:1.0)

let upload = URL(string: "")

var request = URLRequest(url: upload!)
request.httpMethod = "Post"

let boundary = UUID().uuidString
request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

var data = Data()

data.append("\r\n--\(boundary)\r\n".data(using: .utf8)!)
data.append("Content-Disposition: form-data; name\"photo\"; filename=\"image.jpeg\"\r\n".data(using: .utf8)!)
data.append("Content-Type: image/jpeg\r\n\r\n".data(using: .utf8)!)
data.append(imageData!)

//data.append("\r\n")
// daqui pra baixo ver aula de UPLOADING part2 modulo 19

let task = URLSession.shared.uploadTask(with: request, from: data){
    (data, response, error) in {
        let response = String(data: data!, encoding: .utf8)
        
        if let error = error{
            print(error.localizedDescription)
        }
        
        print("response => \(String(describing: response))")
    }
}
