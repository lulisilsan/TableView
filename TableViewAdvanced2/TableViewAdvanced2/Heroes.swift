//
//  Heroes.swift
//  TableViewAdvanced2
//
//  Created by Luciana on 29/09/20.
//  Copyright © 2020 Luciana Santana. All rights reserved.
//

import Foundation
import  UIKit

class Heroes {
    var name: String
    var hability: String
    var studio: String
    var photo: String
    
    init(name: String, hability: String, studio: String, photo: String) {
        self.name = name
        self.hability = hability
        self.studio = studio
        self.photo = photo
    }
}
