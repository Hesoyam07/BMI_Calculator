//
//  UILabel.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 21.11.2023.
//

import UIKit

extension UILabel {
    static func makeLabel (text: String, textAligment: NSTextAlignment, color: UIColor, fontName: String, and size: CGFloat) -> UILabel {
        let label = UILabel()
        label.textColor = color
        label.text = text
        label.numberOfLines = 0
        label.contentMode = .left
        switch fontName {
           case "BoldFont":
               label.font = UIFont.boldSystemFont(ofSize: size)
           case "LightFont":
               label.font = UIFont.systemFont(ofSize: size, weight: .light)
           default:
               label.font = UIFont.systemFont(ofSize: size)
           }
           
        return label
        
    }
    
    static func makeValueLabel (value: String, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = String(value)
        label.textColor = color
    return label
    }
}
