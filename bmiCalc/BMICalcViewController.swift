//
//  BMICalcViewController.swift
//  bmiCalc
//
//  Created by STDC_37 on 13/05/2024.
//

import UIKit

class BMICalcViewController: UIViewController {
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var weightField: UITextField!
    @IBOutlet var bmiValueLabel: UILabel!
    @IBOutlet var classLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        let bmi = calcBMI(height: (heightField.text! as NSString).floatValue, weight: (weightField.text! as NSString).floatValue)
        bmiValueLabel.text = String(format: "%.2f",bmi)
        
        classLabel.text = classifyBMI(bmi: bmi)
    }
    @IBAction func clearBtn(_ sender: UIButton) {
        bmiValueLabel.text = "BMI Value"
        classLabel.text = "Classification"
        heightField.text = ""
        weightField.text = ""
    }
    
    func calcBMI(height: Float, weight: Float) -> Float {
       return weight / pow(height, 2)
    }
    
    func classifyBMI(bmi: Float) -> String {
        switch true {
            case bmi < 18.5:
               return "Underweight"
            case bmi < 24.9:
                return "Normal"
            case bmi < 34.9:
                return "Fatty Fat Fat"
            case bmi < 39.9:
                return "UR MOMMA SO FATT"
            case bmi > 40:
                return "DAAYYUMM SONN!!"
            default:
                return "Alien"
        }
    }

}
