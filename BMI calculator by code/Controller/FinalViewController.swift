//
//  FinalViewController.swift
//  BMI calculator by code
//
//  Created by Дмитрий on 23.11.2023.
//

import UIKit

class FinalViewController: UIViewController {
    let mainView = FinalView()
    var bmiValue: String?
    override func loadView() {
        super.loadView()
        view = mainView
    }
     override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .blue
         mainView.midLabel.text = bmiValue
         mainView.recalculateButton.addTarget(self, action: #selector(recalculateButtonTapped), for: .touchUpInside)
    }
    @objc func recalculateButtonTapped () {
        let mainViewController = ViewController()
        mainViewController.modalPresentationStyle = .fullScreen
        self.present(mainViewController, animated: true, completion: nil)
    }
}
