//
//  TestViewController.swift
//  TrafficLight_march24_2021
//
//  Created by Vladimir Syleimanov on 17.06.2021.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet var logInField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    let carDriverModel = DriverProfile.getDriverPdofile()
    let trainDriverModel = DriverProfile.getTrainPdofile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        @IBAction func unwindTonCarDriverVC(_ unwindSegue: UIStoryboardSegue) {
            logInField.text = nil
            passwordField.text = nil
            
        }
    

        
    
    

    @IBAction func logInButtonPressed() {
        if logInField.text == carDriverModel.profile{
            performSegue(withIdentifier: "segue1", sender: Any?.self)
            
        } else if logInField.text == trainDriverModel.profile{
            performSegue(withIdentifier: "segue2", sender: Any?.self)
            
        } else {
            showAlert(with: "Wrong format", and: "Please enter your name")
        }
    }
}

// MARK: - UIAlertController
extension TestViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:  .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}




