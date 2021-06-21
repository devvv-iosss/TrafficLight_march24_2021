//
//  test2VC.swift
//  TrafficLight_march24_2021
//
//  Created by Vladimir Syleimanov on 27.05.2021.
//

import UIKit

class test2VC: UIViewController {

    enum Colors {
        case red, yellow, green
    }
    

    
    @IBOutlet var red: UIView!
    @IBOutlet var yellow: UIView!
    @IBOutlet var green: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = Colors.red
    private let lightIsOn = CGFloat(1)
    private let lightIsOff = CGFloat(0.3)
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        red.alpha = lightIsOff
        yellow.alpha = lightIsOff
        green.alpha = lightIsOff
        
        
//    red.frame.size.height = 1
//        red.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    }
        
    
    
    
     @IBAction   func startPressed() {
        
            switch currentLight {
            case .red:
                red.alpha = lightIsOn
                green.alpha = lightIsOff
                currentLight = .yellow
                startButton.setTitle("NEXT", for: .normal)
            case .yellow:
                red.alpha = lightIsOff
                yellow.alpha = lightIsOn
                currentLight = .green
            case .green:
                yellow.alpha = lightIsOff
                green.alpha = lightIsOn
                currentLight = .red
            }
        }
        
        
  
    }
