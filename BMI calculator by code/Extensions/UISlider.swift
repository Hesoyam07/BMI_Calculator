//
//  UISlider.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 21.11.2023.
//

import UIKit

extension UISlider {
    static func makeSlider(maxValue: Float, minValue: Float) -> UISlider {
        let slider = UISlider()
        slider.contentMode = .scaleToFill
        slider.maximumValue = maxValue
        slider.minimumValue = minValue
        slider.minimumTrackTintColor = UIColor(red: 0.455, green: 0.447, blue: 0.824, alpha: 0.5)
        slider.thumbTintColor = UIColor(red: 0.455, green: 0.447, blue: 0.824, alpha: 0.5)
        return slider
    }
}


