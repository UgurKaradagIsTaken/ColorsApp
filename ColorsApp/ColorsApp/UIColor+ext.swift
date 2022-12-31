//
//  UIColor+ext.swift
//  ColorsApp
//
//  Created by apple on 31.12.2022.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let color = UIColor(red: CGFloat.random(in: 0...1.0),
                            green: CGFloat.random(in: 0...1.0),
                            blue: CGFloat.random(in: 0...1.0),
                            alpha: 1)
        return color
    }
}
