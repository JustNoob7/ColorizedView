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
    @IBOutlet var redColorSlider: UISlider!
    
//    let mainViewColors = UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func redSliderAction() {
        redColorValue.text = String(format: "%.2f", redColorSlider.value)
        let colorValue = CGFloat(redColorSlider.value)
        mainView.alpha = colorValue
    }
    
}

