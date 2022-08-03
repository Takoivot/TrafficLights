//
//  ViewController.swift
//  TrafficLights
//
//  Created by Артур Сахбиев on 24.04.2022.
//

import UIKit

enum  CurrentColor  {case red, yellow, green}
class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var pressStartButton: UIButton!
    
    private var currentColor = CurrentColor.red
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff

    }

    @IBAction func changeLight() {
        if pressStartButton.currentTitle == "START" {
            pressStartButton.setTitle("Next", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            currentColor = CurrentColor.yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            currentColor = CurrentColor.green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            currentColor = CurrentColor.red
        }
        }
         
}


