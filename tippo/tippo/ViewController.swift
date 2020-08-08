//
//  ViewController.swift
//  tippo
//
//  Created by Yemi Shin on 7/29/20.
//  Copyright © 2020 Yemi Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipTotalView: UIView!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var refreshButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder()
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [],animations: {
            self.tipTotalView.alpha = 1
            },
            completion: nil
        )
        
        let defaults = UserDefaults.standard
        let defaultTipPercentage = defaults.double(forKey:"defaultTip")
        tipControl.setTitle("\(defaultTipPercentage)%", forSegmentAt: 0)
        
    }
    
    
    //@IBAction func onTap(_ sender: Any) {
        //view.endEditing(true)
    //}
    

    @IBAction func calculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let defaultTipPercentage = defaults.double(forKey:"defaultTip")
        let tipPercentages = [defaultTipPercentage * 0.01, 0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func refreshInput(_ sender: Any) {
        billField.text = nil
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    
}

