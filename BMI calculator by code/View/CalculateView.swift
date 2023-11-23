//
//  View.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 20.11.2023.
//

import Foundation
import UIKit

class View: UIView {
 // UI
    private let backgroundImage: UIImageView = .makeMainBackground()
    private let labelBMI: UILabel = .makeLabel(text: "Узнай свой ИМТ", textAligment: .center, color: .darkGray, fontName: "BoldFont", and: 40)
    private let labelHeight: UILabel = .makeLabel(text: "Рост", textAligment: .left, color: .darkGray, fontName: "LightFont", and: 17)
    let calculateButton: UIButton = .makeButton(text: "Рассчитать", color: UIColor(red: 0.386, green: 0.377, blue: 0.616, alpha: 1))
    let labelWeight: UILabel = .makeLabel(text: "Вес", textAligment: .left, color: .darkGray, fontName: "LightFont", and: 17)
    let heightSlider: UISlider = .makeSlider(maxValue: 3, minValue: 1.2)
    let weightSlider: UISlider = .makeSlider(maxValue: 200, minValue: 10)
    var weightValue: UILabel = {
        let label = UILabel()
        label.text = "10"
        return label
    }()
    var heightValue: UILabel = {
        let label = UILabel()
        label.text = "1.2"
        return label
    }()
 // Views
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(labelBMI)
        addSubview(labelHeight)
        addSubview(heightSlider)
        addSubview(labelWeight)
        addSubview(weightSlider)
        addSubview(calculateButton)
        addSubview(weightValue)
        addSubview(heightValue)
        setLayout()
    }
    // Life cycle
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   // Methods
    func setLayout (){
        [backgroundImage,
         labelBMI,
         labelHeight,
         labelWeight,
         heightSlider,
         weightSlider,
         calculateButton,
         weightValue,
         heightValue].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            labelBMI.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            labelBMI.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            labelBMI.heightAnchor.constraint(equalToConstant: 550),
            
            labelHeight.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            labelHeight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            labelHeight.topAnchor.constraint(equalTo: labelBMI.bottomAnchor),
            
            heightValue.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            heightValue.topAnchor.constraint(equalTo: labelBMI.bottomAnchor, constant: 10),
            
            heightSlider.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            heightSlider.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            heightSlider.topAnchor.constraint(equalTo: labelHeight.bottomAnchor, constant: 10),
            heightSlider.heightAnchor.constraint(equalToConstant: 60),
            
            labelWeight.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            labelWeight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            labelWeight.topAnchor.constraint(equalTo: heightSlider.bottomAnchor, constant: 10),
            
            weightValue.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            weightValue.topAnchor.constraint(equalTo: heightSlider.bottomAnchor, constant: 10),
            
            weightSlider.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            weightSlider.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            weightSlider.topAnchor.constraint(equalTo: labelWeight.bottomAnchor, constant: 10),
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            
            calculateButton.heightAnchor.constraint(equalToConstant: 50),
            calculateButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            calculateButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            calculateButton.topAnchor.constraint(equalTo: weightSlider.bottomAnchor, constant: 10)


        ])
    }


}
