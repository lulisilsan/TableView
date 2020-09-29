//
//  HeroesDetailViewController.swift
//  TableViewAdvanced2
//
//  Created by Luciana on 29/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class HeroesDetailViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelHability: UILabel!
    @IBOutlet weak var labelStudio: UILabel!
    
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var heroe: Heroes?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let heroe = heroe {
            labelName.text = heroe.name
            labelHability.text = heroe.hability
            labelStudio.text = heroe.studio
        }
    }
    
    static func getHeroesDetailViewController() -> HeroesDetailViewController? {
        
        if let heroesView = UIStoryboard(name: "HeroesDetailStoryboard", bundle: nil).instantiateInitialViewController() as? HeroesDetailViewController {
            return heroesView
        }
       return nil
    }
}
