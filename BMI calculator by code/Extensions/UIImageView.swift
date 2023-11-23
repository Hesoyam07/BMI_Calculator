//
//  UIImageView.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 21.11.2023.
//

import UIKit
extension UIImageView {
    static func makeMainBackground () -> UIImageView {
        let background = UIImageView()
        background.image = UIImage(named: "calculate_background")
        background.contentMode = .scaleAspectFit
       return background
    }
    static func makeFinalBackground () -> UIImageView {
        let background = UIImageView()
        background.image = UIImage(named: "result_background")
        background.contentMode = .scaleAspectFit
       return background
    }
}
