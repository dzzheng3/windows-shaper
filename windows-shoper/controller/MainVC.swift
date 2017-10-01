//
//  ViewController.swift
//  windows-shoper
//
//  Created by NaiqingZheng on 9/30/17.
//  Copyright © 2017 NaiqingZheng. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var numHours: UILabel!
    @IBOutlet weak var hours: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        btn.setTitle("Calculate", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = btn
        priceTxt.inputAccessoryView = btn
        numHours.isHidden = true
        hours.isHidden = true
    }
    @objc func calculate(){
//        print("we got here")
        if let wage = wageTxt.text, let price = priceTxt.text{
            if let wage = Double(wage),let price = Double(price){
                view.endEditing(true)
                numHours.isHidden = false
                hours.isHidden = false
                numHours.text = "\(Wage.getHours(forWage: wage, andprice: price))"
            }
        }
    }

    @IBAction func clear(_ sender: Any) {
        numHours.isHidden = true
        hours.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    


}

