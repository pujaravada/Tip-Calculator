//
//  ViewController.swift
//  TipCal
//
//  Created by Pujita Ravada on 3/8/17.
//  Copyright © 2017 Pujita Ravada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaults = UserDefaults.standard
        self.tipControl.selectedSegmentIndex  = defaults.integer(forKey: "default_Percentage")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onScreenTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
        @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        billField.text = ""
        tipLabel.text = "$"
        totalLabel.text = "$"
        
        
        let defaults = UserDefaults.standard
        self.tipControl.selectedSegmentIndex  = defaults.integer(forKey: "default_Percentage")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

}

