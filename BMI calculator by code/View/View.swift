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
    private let backgroundImage = View.makeBackground()
    private let labelBMI = View.makeLabel(text: "Узнай свой ИМТ", color: .darkGray, fontName: "BoldFont", and: 40)
    private let labelHeight = View.makeLabel(text: "Рост", color: .darkGray, fontName: "LightFont", and: 17)
 // Views
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(labelBMI)
        addSubview(labelHeight)
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
        [backgroundImage, labelBMI].forEach{
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
            
            labelHeight.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            labelHeight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            labelHeight.topAnchor.constraint(equalTo: labelBMI.bottomAnchor)

        ])
    }


}

extension View {

    static func makeBackground () -> UIImageView {
        let background = UIImageView()
        background.image = UIImage(named: "calculate_background")
        background.contentMode = .scaleAspectFit
       return background
    }
    
    static func makeLabel (text: String, color: UIColor, fontName: String, and size: CGFloat) -> UILabel {
        let label = UILabel()
        label.textColor = color
        label.textAlignment = .center
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
}
