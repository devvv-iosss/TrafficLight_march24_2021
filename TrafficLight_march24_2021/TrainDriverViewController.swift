//
//  TrainDriverViewController.swift
//  TrafficLight_march24_2021
//
//  Created by Vladimir Syleimanov on 17.06.2021.
//

import UIKit

class TrainDriverViewController: UIViewController {

    @IBOutlet var logOut: UIBarButtonItem!
    
    var trainProfile = DriverProfile.getTrainPdofile()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = trainProfile.profile


    }

    @IBAction func logOutPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    

}
