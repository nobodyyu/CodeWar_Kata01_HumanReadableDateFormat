//
//  HumanReadableDateFormat.swift
//  CodeWar_Kata01_HumanReadableFormat
//
//  Created by AKI on 2018/6/10.
//  Copyright © 2018年 AKI. All rights reserved.
//

func HumanReadableDateFormat(_ orginalSecond:Int) -> String {
    
    let Minute = (orginalSecond/60)
    let Second = orginalSecond % 60
    
    var resultMinutes = ""
    var resultSecond = ""
    var resultFinal = ""
    var conjunctionMinSec = ""
    
    if Minute == 0 {
        resultSecond = "\(Second) Second\((Second > 1 ? "s" : ""))"
        resultMinutes = ""
        
        resultFinal = "\(resultSecond)"
    }else{
        if Second != 0 {
            resultSecond = "\(Second) Second\((Second > 1 ? "s" : ""))"
            conjunctionMinSec = " and "
        }
        resultMinutes = "\(Minute) Minute\((Minute > 1 ? "s" : ""))"

        resultFinal = "\(resultMinutes)\(conjunctionMinSec)\(resultSecond)"
    }
    
    
    return resultFinal
}
