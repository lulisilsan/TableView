//
//  ViewController.swift
//  TableViewAdvanced2
//
//  Created by Luciana on 29/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayHeroes = [Heroes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayHeroes.append(Heroes(name: "Jean Grey", hability: "Telepátia", studio: "Marvel", photo: "jeangrey.jpeg"))
        arrayHeroes.append(Heroes(name: "Vespa", hability: "Vespa", studio: "Marvel", photo: "vespa.png"))
        arrayHeroes.append(Heroes(name: "Vampira", hability: "Sugar Vitalidade", studio: "Marvel", photo: "vampira.png"))
        arrayHeroes.append(Heroes(name: "Tempestade", hability: "Mutante", studio: "Marvel", photo: "tempestade.jpg"))
        arrayHeroes.append(Heroes(name: "Viúva Negra", hability: "Força", studio: "Marvel", photo: "viuva.jpg"))
        arrayHeroes.append(Heroes(name: "Feiticeira Escarlate", hability: "Telepátia", studio: "Marvel", photo: "feiticeira.jpg"))
        arrayHeroes.append(Heroes(name: "Emma Frosty", hability: "Telepátia", studio: "Marvel", photo: "emma.jpg"))
        arrayHeroes.append(Heroes(name: "Polarias", hability: "Magnetismo", studio: "Marvel", photo: "polaris.png"))
        arrayHeroes.append(Heroes(name: "Gamorra", hability: "Força", studio: "Marvel", photo: "Gamora.png"))
        arrayHeroes.append(Heroes(name: "Capitã Marvel", hability: "Força", studio: "Marvel", photo: "capita.jpg"))
        arrayHeroes.append(Heroes(name: "Jubileu", hability: "Mutante", studio: "Marvel", photo: "jubileu.jpg"))
       
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let heroe = arrayHeroes[indexPath.row]
        
        if let heroeView = HeroesDetailViewController.getHeroesDetailViewController() {
            heroeView.heroe = heroe
            present(heroeView, animated: true, completion: nil)
        }
    
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayHeroes.remove(at: indexPath.row)
        tableViewList.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayHeroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroesCustomCell", for: indexPath) as! HeroesCustomCell
        cell.setup(heroe: arrayHeroes[indexPath.row])
        return cell
    }
    
    
}
