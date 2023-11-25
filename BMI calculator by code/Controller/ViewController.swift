//
//  ViewController.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {
    let mainView = CalculateView()
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .allEvents)
        mainView.weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .allEvents)
        mainView.calculateButton.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        
    }
    @objc func heightSliderChanged (_ sender: UISlider) {
        let decimalValue = String(format: "%.2f", sender.value)
        mainView.heightValue.text = decimalValue
        print (decimalValue)
    }
    @objc func weightSliderChanged (_ sender: UISlider) {
        let decimalValue = String(format: "%.0f", sender.value)
        mainView.weightValue.text = decimalValue
        print (decimalValue)
    }
    @objc public func calculateButtonTapped (_ sender: UIButton) {
        let finalViewController = FinalViewController()
        if let weight = Double(mainView.weightValue.text!), let height = Double(mainView.heightValue.text!) {
            let bmi = weight / pow(height, 2)
            finalViewController.bmiValue = String(format: "%.2f", bmi)
            print("BMI is: \(bmi)")
        } else {
            print("Invalid input")
        }
        finalViewController.modalPresentationStyle = .fullScreen
        self.present(finalViewController, animated: true, completion: nil)
    }
    
    
}
