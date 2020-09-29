//
//  ViewController.swift
//  TableViewAdvanced
//
//  Created by Luciana on 28/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewDeveloperList: UITableView!
    var arrayDevelopers = [Developer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDeveloperList.delegate = self
        tableViewDeveloperList.dataSource = self
        
        arrayDevelopers.append(Developer(name: "Luciana", email: "luciana@email.com", photoProfile: "dev8.jpg"))
        arrayDevelopers.append(Developer(name: "Gustavo", email: "gustavo@email.com", photoProfile: "dev1.jpg"))
        arrayDevelopers.append(Developer(name: "Guilherme", email: "guilherme@email.com", photoProfile: "dev3.jpg"))
        arrayDevelopers.append(Developer(name: "Fabiana", email: "fabiana@email.com", photoProfile: "dev4.jpg"))
        arrayDevelopers.append(Developer(name: "Lee", email: "lee@email.com", photoProfile: "dev5.jpg"))
        arrayDevelopers.append(Developer(name: "Jonas", email: "jonas@email.com", photoProfile: "dev6.jpeg"))
        arrayDevelopers.append(Developer(name: "Victor", email: "victor@email.com", photoProfile: "dev7.jpg"))
        arrayDevelopers.append(Developer(name: "Renato", email: "renato@email.com", photoProfile: "dev8.jpg"))
        arrayDevelopers.append(Developer(name: "João", email: "joao@email.com", photoProfile: "dev9.jpg"))
        arrayDevelopers.append(Developer(name: "Márcio", email: "marcio@email.com", photoProfile: "dev10.jpg"))
        
    }
}

extension ViewController: UITableViewDelegate {
        
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayDevelopers.remove(at: indexPath.row)
        tableViewDeveloperList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeveloperCustomCell", for: indexPath) as! DeveloperCustomCell
        cell.setup(developer: arrayDevelopers[indexPath.row])
        return cell
        
    }
}

