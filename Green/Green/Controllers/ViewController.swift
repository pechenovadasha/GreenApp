//
//  ViewController.swift
//  Green
//
//  Created by user on 12.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 390, height: 850))
        imageView.image = UIImage(named: "FirstBackground")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: { self.animate()
            
        })
        
        
    }
    
    private func animate()
    {
        let newController = ViewHomeController()
        newController.modalPresentationStyle = .fullScreen
        present(newController, animated: true)
    }
    
}

