//
//  ViewController.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {

    let mainView = View()
    
    override func loadView() {
        super.loadView()
         view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .allEvents)
        mainView.weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .allEvents)
//        func heightSliderChanged (_ sender: UISlider) {
//            print (View.heightSlider.value)
//        }
        
    }
    @objc func heightSliderChanged (_ sender: UISlider) -> String {
        let decimalValue = String(format: "%.2f", sender.value)
        print (decimalValue)
        return decimalValue
    }
    @objc func weightSliderChanged (_ sender: UISlider) -> String {
        let decimalValue = String(format: "%.2f", sender.value)
        print (decimalValue)
        return decimalValue
    }

}

