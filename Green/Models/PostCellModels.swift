//
//  PostCellModels.swift
//  Green
//
//  Created by user on 14.10.2023.
//

import UIKit

final class PostCellModel {
    let name: String
    let img:UIImage?
    
    init(name: String = "", img: UIImage?) {
        self.name = name
        self.img = img
    }
}
