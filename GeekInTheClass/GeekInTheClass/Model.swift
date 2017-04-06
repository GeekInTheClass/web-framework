//
//  Model.swift
//  GeekInTheClass
//
//  Created by Sang Chul Lee on 2017. 4. 6..
//  Copyright © 2017년 SC_production. All rights reserved.
//

import Foundation
import UIKit

class FrameWork {
    let name: String
    let image: UIImage
    
    init(_ name: String, _ image: UIImage) {
        self.name = name
        self.image = image
    }
}

let frameworks = [FrameWork("Angular", #imageLiteral(resourceName: "Angular")), FrameWork("React", #imageLiteral(resourceName: "React")), FrameWork("Vue", #imageLiteral(resourceName: "Vue"))]
