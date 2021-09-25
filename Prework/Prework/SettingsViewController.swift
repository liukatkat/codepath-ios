//
//  SettingsViewController.swift
//  Prework
//
//  Created by Katrina Liu on 9/3/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1TextField: UITextField!
    @IBOutlet weak var tip2TextField: UITextField!
    @IBOutlet weak var tip3TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        tip1TextField.text = String(format:"%.0f", defaults.double(forKey: "tip1") * 100)
        tip2TextField.text = String(format:"%.0f", defaults.double(forKey: "tip2") * 100)
        tip3TextField.text = String(format:"%.0f", defaults.double(forKey: "tip3") * 100)
    }
    
    
    @IBAction func updateTip1Value(_ sender: Any) {
        
        let tip1Value = (Double(tip1TextField.text!) ?? 0) / 100
        let defaults = UserDefaults.standard
        defaults.set(tip1Value, forKey: "tip1")
        defaults.synchronize()
    }
    
    @IBAction func updateTip2Value(_ sender: Any) {
        
        let tip2Value = (Double(tip2TextField.text!) ?? 0) / 100
        let defaults = UserDefaults.standard
        defaults.set(tip2Value, forKey: "tip2")
        defaults.synchronize()
    
    }
    
    @IBAction func updateTip3Value(_ sender: Any) {
        
        let tip3Value = (Double(tip3TextField.text!) ?? 0) / 100
        let defaults = UserDefaults.standard
        defaults.set(tip3Value, forKey: "tip3")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

