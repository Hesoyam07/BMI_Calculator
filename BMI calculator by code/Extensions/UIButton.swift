//
//  UIButton.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 21.11.2023.
//

import UIKit

extension UIButton {
    
    static func makeButton(text: String, color: UIColor, textColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitleColor(textColor, for: .normal)
        button.setTitle(text, for: .normal)
        button.backgroundColor = color
        return button
    }
}
