//
//  ViewController.swift
//  Prework
//
//  Created by Katrina Liu on 9/3/21.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var perPersonPayLbl: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        
        let defaults = UserDefaults.standard
        if ("appHasbeenOpened" == defaults.string(forKey: "appHasbeenOpened")) {
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip1") * 100), forSegmentAt: 0)
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip2") * 100), forSegmentAt: 1)
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip3") * 100), forSegmentAt: 2)
        }
        else {
            
            defaults.set(0.15, forKey: "tip1")
            defaults.set(0.18, forKey: "tip2")
            defaults.set(0.20, forKey: "tip3")
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip1") * 100), forSegmentAt: 0)
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip2") * 100), forSegmentAt: 1)
            tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip3") * 100), forSegmentAt: 2)
            
            defaults.set("appHasbeenOpened", forKey: "appHasbeenOpened")
        }
        calculateTipAndSplit()
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(ViewController.didTapView))
        self.view.addGestureRecognizer(tapRecognizer)
    }
    
    @objc func didTapView(){
      self.view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        
        tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip1") * 100), forSegmentAt: 0)
        tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip2") * 100), forSegmentAt: 1)
        tipControl.setTitle(String(format:"%.0f%%", defaults.double(forKey: "tip3") * 100), forSegmentAt: 2)
        calculateTipAndSplit()
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        
        calculateTipAndSplit()
        
    }
    
    @IBAction func calculateSplit(_ sender: Any) {
        
        calculateTipAndSplit()
        
    }
    
    @IBAction func totalInputEnds(_ sender: Any) {
        
        calculateTipAndSplit()
    }
    
    
    func calculateTipAndSplit() {
        
        let defaults = UserDefaults.standard
        
        let billAmt = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [defaults.double(forKey: "tip1"), defaults.double(forKey: "tip2"), defaults.double(forKey: "tip3")]
        let tip = billAmt * tipPercentage[tipControl.selectedSegmentIndex]
        let total = billAmt + tip
        let peopleNum = Double(peopleTextField.text!) ?? 0
        tipAmountLbl.text = String(format:"$%.2f", tip)
        totalLbl.text = String(format: "$%.2f", total)
        perPersonPayLbl.text = ""
        if (peopleNum == 0) {
        
        }
        else {
            perPersonPayLbl.text = String(format: "$%.2f per person", total/peopleNum)
        }
        
    }
}

