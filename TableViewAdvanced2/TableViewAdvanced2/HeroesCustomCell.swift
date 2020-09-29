//
//  HeroesCustomCell.swift
//  TableViewAdvanced2
//
//  Created by Luciana on 29/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class HeroesCustomCell: UITableViewCell {
    
    @IBOutlet weak var imagePhoto: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func setup(heroe: Heroes) {
        labelName.text = heroe.name
        imagePhoto.image = UIImage(named: heroe.photo)
        imagePhoto.layer.borderWidth = 2
        imagePhoto.layer.masksToBounds = false
        imagePhoto.layer.borderColor = UIColor.black.cgColor
        imagePhoto.layer.cornerRadius = imagePhoto.frame.height/2
        imagePhoto.clipsToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
