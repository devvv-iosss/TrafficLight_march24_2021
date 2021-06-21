//
//  CarDriverViewController.swift
//  TrafficLight_march24_2021
//
//  Created by Vladimir Syleimanov on 17.06.2021.
//

import UIKit

class CarDriverViewController: UIViewController {

    @IBOutlet var LogOut: UIBarButtonItem!
    
    var carProfile = DriverProfile.getDriverPdofile()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = carProfile.profile
        
    }

    @IBAction func logOutPressed(_ sender: Any) {
       dismiss(animated: true)
       // testVC.logInField = nil
        print("ok")
    }
    

    

}
