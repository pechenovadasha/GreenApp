//
//  PostCell.swift
//  Green
//
//  Created by user on 10.10.2023.
//

import UIKit

final class PostCell: UICollectionViewCell{
    
    private let PlantImg: UIImageView = UIImageView()
    private let PlantName: UILabel = UILabel()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(){
        backgroundColor = .CellBackGround
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.BorderColor.cgColor
        layer.shadowColor = UIColor.ShadowPostCell.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: -2.0)
        layer.shadowRadius = 9.0
        layer.shadowOpacity = 0.6
        layer.masksToBounds = false
        clipsToBounds = true
        
        addSubview(PlantName)
        addSubview(PlantImg)
    }
    
    func configure(with model: PostCellModel)
    {
        PlantImg.image = model.img
        PlantImg.backgroundColor = .PlantImgBackground
        PlantImg.layer.cornerRadius = 45
        PlantName.text = model.name
        PlantName.textColor = .textColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        PlantImg.pin
            .bottomLeft(15)
            .size(CGSize(width: 90, height: 90))
        
        PlantName.pin
            .vertically(45)
            .hCenter()
            .sizeToFit()
    }
}
