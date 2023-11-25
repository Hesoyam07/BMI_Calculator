//
//  CalculatorBrain.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 25.11.2023.
//

import UIKit

struct CalculatorBrain {
    var calculateView: CalculateView?
    var finalView: FinalView?
    
    mutating func calculator(calculateView: CalculateView) -> Double? {
        self.calculateView = calculateView
        if let weight = Double(calculateView.weightValue.text!), let height = Double(calculateView.heightValue.text!) {
            let bmi = weight / pow(height, 2)
            print("BMI is: \(bmi)")
            return bmi
        } else {
            print("Invalid input")
            return nil
        }
    }
    
    func changeLabel (finalViewController: FinalViewController, finalView: FinalView) -> String? {
        //let finalViewController = FinalViewController()
        var text = finalView.bottomLabel.text
        let bmiValue = Double (finalViewController.bmiValue!)!
       
        if bmiValue <= 13.5 && bmiValue <= 18.4 {
            text = "Кушай больше"
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            text = "Все в порядке так держать!"
        } else if bmiValue >= 25 && bmiValue <= 29.9 {
            text = "Кушай меньше"
        } else if bmiValue > 30 {
            text = "Кушай сильно меньше"
        }
        return text
    }
}
