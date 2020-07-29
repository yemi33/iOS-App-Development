//
//  SettingsViewController.swift
//  tippo
//
//  Created by Yemi Shin on 7/29/20.
//  Copyright © 2020 Yemi Shin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefaultTip: UITextField!
    
    
    @IBOutlet weak var DefaultHistoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
   
    @IBAction func setDefault(_ sender: Any) {
        let defaults = UserDefaults.standard
        let defaultTipPer = Double(DefaultTip.text!)
        defaults.set(defaultTipPer, forKey:"defaultTip")
        
        defaults.synchronize()
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}
