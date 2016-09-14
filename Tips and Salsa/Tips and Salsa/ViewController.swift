//
//  ViewController.swift
//  Tips and Salsa
//
//  Created by Adam Moffitt on 9/13/16.
//  Copyright © 2016 USC SCOPE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true);
        
    }
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.10, 0.15, 0.2]
        
        let bill = Double(billTextField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill + tip
            
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

