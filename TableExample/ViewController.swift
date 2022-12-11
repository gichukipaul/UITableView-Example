//
//  ViewController.swift
//  TableExample
//
//  Created by user on 20/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "New🔥"
        mainTable.delegate = self
        mainTable.dataSource = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.detailTextLabel?.isHidden = false
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure cell
        let cell = mainTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell .imageView?.image = UIImage(systemName: "bolt.car")
        cell.textLabel?.text = "Text goes here"
        cell.detailTextLabel?.text = "More text here"
        return cell
    }
    
    
}
