//
//  HumanReadableDateFormat.swift
//  CodeWar_Kata01_HumanReadableFormat
//
//  Created by AKI on 2018/6/10.
//  Copyright © 2018年 AKI. All rights reserved.
//

func HumanReadableDateFormat(_ orginalSecond:Int) -> String {
    
    let Hour = (orginalSecond/60/60)
    let Minute = (orginalSecond/60)
    let Second = orginalSecond % 60
    
    var resultMinutes = ""
    var resultSecond = ""
    var resultFinal = ""
    var conjunctionMinSec = ""
    
    if Hour == 0 {
        
    }
    
    if Minute == 0 {
        resultSecond = FormatFactory(Second,"Second")
        resultMinutes = ""
        
        resultFinal = "\(resultSecond)"
    }else{
        if Second != 0 {
            resultSecond = FormatFactory(Second,"Second")
            conjunctionMinSec = " and "
        }
        resultMinutes = FormatFactory(Minute,"Minute")

        resultFinal = "\(resultMinutes)\(conjunctionMinSec)\(resultSecond)"
    }
    
    
    return resultFinal
}

func FormatFactory(_ cnt:Int,_ Symbol:String)->String{
    return "\(cnt) \(Symbol)\((cnt > 1 ? "s" : ""))"
}
