//
//  DeveloperCustomCell.swift
//  TableViewAdvanced
//
//  Created by Luciana on 28/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import UIKit

class DeveloperCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var imagePhotoProfile: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    func setup (developer: Developer) {
        labelName.text = developer.name
        labelEmail.text = developer.email
        imagePhotoProfile.image = UIImage(named: developer.photoProfile)
        imagePhotoProfile.layer.borderWidth = 1
        imagePhotoProfile.layer.masksToBounds = false
        imagePhotoProfile.layer.borderColor = UIColor.black.cgColor
        imagePhotoProfile.layer.cornerRadius = imagePhotoProfile.frame.height/2
        imagePhotoProfile.clipsToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
