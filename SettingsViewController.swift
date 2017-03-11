//
//  SettingsViewController.swift
//  TipCal
//
//  Created by Pujita Ravada on 3/9/17.
//  Copyright © 2017 Pujita Ravada. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefaultTipController: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        self.DefaultTipController.selectedSegmentIndex  = defaults.integer(forKey: "default_Percentage")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     // sets the selected segment in memory
    @IBAction func DefaultTipControllerPressed(_ sender: AnyObject) {
        
        if(DefaultTipController.selectedSegmentIndex == 0)
        {
            let DefaultTipController = UserDefaults.standard
            DefaultTipController.set(0, forKey: "default_Percentage")
        }
        if(DefaultTipController.selectedSegmentIndex == 1)
        {
            let DefaultTipController = UserDefaults.standard
            DefaultTipController.set(1, forKey : "default_Percentage")
        }
        else if(DefaultTipController.selectedSegmentIndex == 2)
        {
            let DefaultTipController = UserDefaults.standard
            DefaultTipController.set(2, forKey: "default_Percentage")
        }
            
        UserDefaults.standard.synchronize()
        
        
        
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
