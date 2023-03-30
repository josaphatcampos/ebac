//: [Previous](@previous)

import Foundation

class SessionDelegate: NSObject, URLSessionDownloadDelegate{
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("DownloadLocation:", location)
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress = round(Float(totalBytesWritten))/Float(totalBytesExpectedToWrite) * 100
        
        print("carregando: \(progress)")
    }
}

let downloadSession = URLSession(configuration: .default, delegate: SessionDelegate(), delegateQueue: OperationQueue.main)

let urlDownload = URL(string: "https://lumiere-a.akamaihd.net/v1/images/og-generic_02031d2b.png?region=0%2C0%2C1200%2C1200")!

let task = downloadSession.downloadTask(with: urlDownload)
//{
//    (location, response, error) in
//    if let error = error{
//        print(error.localizedDescription)
//    }
//    
//    print("response => \(String(describing: response))")
//}

task.resume()
