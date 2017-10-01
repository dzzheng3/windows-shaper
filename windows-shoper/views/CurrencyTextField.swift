//
//  CurrencyTextField.swift
//  windows-shoper
//
//  Created by NaiqingZheng on 9/30/17.
//  Copyright © 2017 NaiqingZheng. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))
        currencyLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.layer.cornerRadius = 5
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)

    }
    override func prepareForInterfaceBuilder() {
        customize()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
       
    }
    
    func customize(){
        layer.cornerRadius = 10
        clipsToBounds = true
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2772612236)
        textAlignment = .center
        if let place = placeholder{
            attributedPlaceholder = NSAttributedString(string:place,attributes:[.foregroundColor:#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
            textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }

}
