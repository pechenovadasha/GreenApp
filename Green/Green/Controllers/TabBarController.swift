//
//  TabBarController.swift
//  Green
//
//  Created by user on 20.10.2023.
//

import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTapBar()
        setTabBarAppeareance()
    }
    
    private func generateTapBar(){
        viewControllers = [
        generateViewController(viewController: ViewHomeController(),
                               title: "Home",
                               image: UIImage(systemName: "house.fill")
                              ),
        generateViewController(viewController: StoreController(),
                               title: "Store",
                               image:  UIImage(systemName: "storefront.fill")
                              ),
        generateViewController(viewController: ProfileController(),
                               title: "Profile",
                               image:  UIImage(systemName: "person.fill")
                              )
        ]
    }
    
    private func generateViewController(viewController:UIViewController, title:String, image: UIImage?) -> UIViewController{
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppeareance(){
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width, 
                height: height),
            cornerRadius: height / 2)
        
        roundLayer.path = bezierPath.cgPath
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.TabBarBackground.cgColor
        tabBar.tintColor = .BorderColor
        tabBar.unselectedItemTintColor = .IconFillBackground
        
    }
}
