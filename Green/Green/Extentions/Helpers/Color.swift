//
//  Color.swift
//  Green
//
//  Created by user on 09.10.2023.
//

import UIKit

struct Color {
    let lightValue: UIColor
    let darkValue: UIColor
    
    init(lightValue: UIColor, darkValue: UIColor? = nil) {
        self.lightValue = lightValue
        self.darkValue = darkValue ?? lightValue
    }
    
    var value: UIColor {
        return UIColor { (traitCollection: UITraitCollection) -> UIColor in
            if traitCollection.userInterfaceStyle == .dark {
                return darkValue
            } else {
                return lightValue
            }
        }
    }
}
