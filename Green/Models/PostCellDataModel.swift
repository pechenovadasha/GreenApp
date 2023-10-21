//
//  PostCellDataModel.swift
//  Green
//
//  Created by user on 14.10.2023.
//

import UIKit

struct PostCellDataModel{
    func loadPosts() -> [PostCellModel]{
        let posts: [PostCellModel] = [.init(name: "Lily", img: UIImage(named: "lily")),
                                      .init(name: "Rose", img: UIImage(named: "rose")),
                                      .init(name: "Lily", img: UIImage(named: "lily")),
                                      .init(name: "Rose", img: UIImage(named: "rose")),
                                      .init(name: "Lily", img: UIImage(named: "lily")),
                                      .init(name: "Rose", img: UIImage(named: "rose")),
                                      .init(name: "Lily", img: UIImage(named: "lily")),
                                      .init(name: "Rose", img: UIImage(named: "rose"))]
        return posts
    }
    
}
