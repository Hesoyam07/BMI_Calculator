//
//  FinalView.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 23.11.2023.
//

import UIKit

final class FinalView: UIView {
    
    // Private UI
    
    private let finalBackgroundImage: UIImageView = .makeFinalBackground()
     let recalculateButton: UIButton = .makeButton(text: "Перерассчитать", color: UIColor.white, textColor: UIColor(red: 0.386, green: 0.377, blue: 0.616, alpha: 1))
    
    private lazy var labelContainer: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [topLabel, midLabel, bottomLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    // StackView filling
    let topLabel: UILabel = .makeLabel(text: "Ваш резльтат", textAligment: .center, color: .white, fontName: "BoldFont", and: 35)
    var midLabel: UILabel = .makeLabel(text: "" , textAligment: .center, color: UIColor.white, fontName: "BoldFont", and: 50)
    var bottomLabel: UILabel = .makeLabel(text: "", textAligment: .center, color: UIColor.white, fontName: "BoldFont", and: 30)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        [finalBackgroundImage, recalculateButton, labelContainer ].forEach{addSubview ($0)}
        setLayout()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     func setLayout () {
        [finalBackgroundImage, recalculateButton, labelContainer].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        NSLayoutConstraint.activate([
            finalBackgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            finalBackgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            finalBackgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            finalBackgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            recalculateButton.heightAnchor.constraint(equalToConstant: 50),
            recalculateButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            recalculateButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            recalculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            
            labelContainer.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelContainer.centerYAnchor.constraint(equalTo: centerYAnchor)
            
            
            
        ])
    }
}

