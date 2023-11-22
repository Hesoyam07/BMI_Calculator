//
//  UIImageView.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 21.11.2023.
//

import UIKit
extension UIImageView {
    static func makeBackground () -> UIImageView {
        let background = UIImageView()
        background.image = UIImage(named: "calculate_background")
        background.contentMode = .scaleAspectFit
       return background
    }
}
