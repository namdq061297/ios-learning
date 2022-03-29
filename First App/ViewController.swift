//
//  ViewController.swift
//  First App
//
//  Created by Namdq on 22/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var option: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        value.text = "0"
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func convert(_ sender: Any) {
        let value1 = Double(input1.text!)!
        let value2 = Double(input2.text!)!
        let converted = value1 * value2
        if option.selectedSegmentIndex == 0 {
            value.text = "$\(converted)"
        } else {
            value.text = "¥\(converted)"
        }
       
        print(converted)
    }
}

