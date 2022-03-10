import Foundation
import UIKit
import PlaygroundSupport


class Viewcontroller: UIViewController{
    
    var tableview: UITableView!
    let items = ["Maçã", "Banana", "Mamão", "Jaboticaba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.frame = CGRect(x: 0, y: 0, width: 220, height: 380)
        
        self.tableview = UITableView(frame: self.view.frame)
        self.tableview!.dataSource = self
        self.tableview!.delegate = self
        self.tableview!.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(self.tableview)
    }

}

extension Viewcontroller: UITableViewDelegate, UITableViewDataSource{
    
    // MARK: - DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = "\(self.items[indexPath.row])"
        
        return cell
    }
    
    // MARK: - Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Selecionado", message: "Você selecionou \(self.items[indexPath.row])", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
        
        
    }
}

var tableview = Viewcontroller()
PlaygroundPage.current.liveView = tableview.view

