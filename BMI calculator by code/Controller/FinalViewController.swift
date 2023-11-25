//
//  FinalViewController.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 23.11.2023.
//

import UIKit

class FinalViewController: UIViewController {
    let finalView = FinalView()
    let calculatorBrain = CalculatorBrain()
    var bmiValue: String?
    override func loadView() {
        super.loadView()
        view = finalView
    }
     override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .blue
         finalView.midLabel.text = bmiValue
         finalView.bottomLabel.text = calculatorBrain.changeLabel(finalViewController: self, finalView: finalView)
         finalView.recalculateButton.addTarget(self, action: #selector(recalculateButtonTapped), for: .touchUpInside)
    }
    @objc func recalculateButtonTapped () {
        let mainViewController = ViewController()
        mainViewController.modalPresentationStyle = .fullScreen
        self.present(mainViewController, animated: true, completion: nil)
    }
}
