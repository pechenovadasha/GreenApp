//
//  ViewHomeController.swift
//  Green
//
//  Created by user on 14.09.2023.
//

import UIKit
import PinLayout

final class ViewHomeController: UIViewController{
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout() //Что это и зачем ?
        layout.minimumLineSpacing = 28
        
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PostCell.self, forCellWithReuseIdentifier: "PostCell")
        return collectionView
    }()
    
    private var models: [PostCellModel] = []
    
    private func setup()
    {
//        title = "My home garden"
        let BackgroundImage = UIImage(named: "palma")
        let BackgroundImageView = UIImageView(image: BackgroundImage)
        BackgroundImageView.alpha = 0.8
        collectionView.backgroundColor = .backGround
        collectionView.backgroundView = BackgroundImageView
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        loadData()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView.pin.all()
    }
    
    private func loadData()
    {
        let model = PostCellDataModel()
        models = model.loadPosts()
    }
}

extension ViewHomeController:UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as? PostCell,
            models.count > indexPath.row
                
        else {
            return UICollectionViewCell()
        }
        
        cell.configure(with: models[indexPath.row])
        
        return cell
    }
}

extension ViewHomeController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width / 3.4)
    }
}
