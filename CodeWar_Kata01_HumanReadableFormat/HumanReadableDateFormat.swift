//
//  HumanReadableDateFormat.swift
//  CodeWar_Kata01_HumanReadableFormat
//
//  Created by AKI on 2018/6/10.
//  Copyright © 2018年 AKI. All rights reserved.
//

func HumanReadableDateFormat(_ orginalSecond:Int) -> String {
    let Second = orginalSecond % 60
    let Minute = (orginalSecond/60)
    let Hour = (Minute/60)
    var resultHours = ""
    var resultMinutes = ""
    var resultSecond = ""
    var resultFinal = ""

    resultSecond = FormatFactory(Second,"Second")
    resultMinutes = FormatFactory(Minute,"Minute")

    resultFinal = Conjunction(resultMinutes,resultSecond)
    return resultFinal
}

func Conjunction(_ str1:String,_ str2:String)->String{
 
    if(str1 == ""){
        return str2
    }
    if str2 == "" {
        return str1
    }
    
    return "\(str1) and \(str2)"
    
}

func FormatFactory(_ cnt:Int,_ Symbol:String)->String{
    if cnt == 0 {
        return ""
    }
    return "\(cnt) \(Symbol)\((cnt > 1 ? "s" : ""))"
}
