//
//  FinalView.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 23.11.2023.
//

import Foundation
import UIKit

class FinalView: View {
    // Private UI
    
    private let finalBackgroundImage: UIImageView = .makeFinalBackground()
    private let recalculateButton: UIButton = .makeButton(text: "Перерассчитать", color: UIColor.white)
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(finalBackgroundImage)
        addSubview(recalculateButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   override func setLayout () {
        [finalBackgroundImage].forEach{
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
            recalculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10)
            //recalculateButton.topAnchor.constraint(equalTo: weightSlider.bottomAnchor, constant: 10)
            ])
    }
}

