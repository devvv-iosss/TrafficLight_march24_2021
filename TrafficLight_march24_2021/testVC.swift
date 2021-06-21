//
//  testVC.swift
//  TrafficLight_march24_2021
//
//  Created by Vladimir Syleimanov on 26.05.2021.
//

import UIKit

class testVC: UIViewController {
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
   
    }
    
    @IBAction func startPressed() {
        
        if startButton.titleLabel?.text == "START" {
            startButton.setTitle("NEXT", for: .normal)
            redColor.alpha = 1
        } else if redColor.alpha == 1 {
            redColor.alpha = 0.3
            yellowColor.alpha = 1
        } else if yellowColor.alpha == 1 {
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
        } else if greenColor.alpha == 1 {
            greenColor.alpha = 0.3
            redColor.alpha = 1
        }
        
        
        
        
    }
    
    
    
    
    
    
    
}
