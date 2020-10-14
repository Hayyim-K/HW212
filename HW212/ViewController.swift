//
//  ViewController.swift
//  HW212
//
//  Created by vitasiy on 14.10.2020.
//  Copyright © 2020 b2banalytica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var buttonLable: UIButton!
    
    var lightType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = redLightView.frame.height/2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height/2
        greenLightView.layer.cornerRadius = greenLightView.frame.height/2
        
        buttonLable.layer.cornerRadius = 20
    }
    
    @IBAction func lightMotion() {
        buttonLable.setTitle("NEXT", for: .normal)
        switch lightType {
        case 0:
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            lightType += 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            lightType += 1
            
        default:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            lightType = 0
        }
        
        
        
    }
}

