//
//  ViewController.swift
//  Slider
//
//  Created by Prince's Mac on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var my_Switch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 1
        slider.maximumValue = 10000
    }
    @IBAction func onSliderChange(_ sender: UISlider) {
        let selectedValue = round(sender.value)
        sender.value = selectedValue
        priceLabel.text = Int(sender.value).description
    }
    @IBAction func onSwitchOnOff(_ sender: UISwitch) {
        if (my_Switch.isOn){
            print("The Switch Is On")
        }
        else {
            print("The Switch Is Off")
        }
    }
}
