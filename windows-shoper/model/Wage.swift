//
//  Wage.swift
//  windows-shoper
//
//  Created by NaiqingZheng on 9/30/17.
//  Copyright © 2017 NaiqingZheng. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage:Double,andprice price:Double)->Int{
        return Int(price/wage)
    }
}
