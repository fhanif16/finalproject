//
//  ViewController.swift
//  final
//
//  Created by Fatema Hanif on 9/15/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tibLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
   @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        
       let bill = Double (billField.text!) ?? 0
        
        // Calculate the tip and total
       let tipPercantages = [0.15,0.18,0.20]
       let tip = bill * tipPercantages[tipControl.selectedSegmentIndex]
       let total = bill + tip

        
        // update the tip and total labels
        
        
       tibLabel.text = String ( format: "$%.2f", tip)
        totalLabel.text=String ( format: "$%.2f", total)
        
        
        
        
        
        
    }
    
    
}


