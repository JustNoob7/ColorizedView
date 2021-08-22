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
        
        makeRedValue()
        makeGreenValue()
        makeBlueValue()

        mixColor()
    }

    @IBAction func redSliderAction() {
        makeRedValue()
        
        mixColor()
    }
    
    @IBAction func greenSliderAction() {
        makeGreenValue()
    }
    
    @IBAction func blueSliderAction() {
        makeBlueValue()
    }
    
}


// MARK: - Methods with colors
extension ViewController {
    func makeRedValue() {
        redColorValue.text = String(format: "%.2f", redColorSlider.value)
    }
    
    func makeGreenValue() {
        greenColorValue.text = String(format: "%.2f", greenColorSlider.value)
    }
    
    func makeBlueValue() {
        blueColorValue.text = String(format: "%.2f", blueColorSlider.value)
    }
    
    func mixColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: CGFloat(1)
        )
    }
}
