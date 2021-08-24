//
//  ViewController.swift
//  ColorizedLabel
//
//  Created by Ярослав Бойко on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20

        mixColor()
        
        setValue(for: redColorValue, greenColorValue, blueColorValue)
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        mixColor()
        
        switch sender {
        case redColorSlider:
            redColorValue.text = string(from: redColorSlider)
        case greenColorSlider:
            greenColorValue.text = string(from: greenColorSlider)
        default:
            blueColorValue.text = string(from: blueColorSlider)
        }
    }
    
    private func mixColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: CGFloat(1)
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redColorValue:
                redColorValue.text = string(from: redColorSlider)
            case greenColorValue:
                greenColorValue.text = string(from: greenColorSlider)
            default:
                blueColorValue.text = string(from: blueColorSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
