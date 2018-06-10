//
//  HumanReadableDateFormat.swift
//  CodeWar_Kata01_HumanReadableFormat
//
//  Created by AKI on 2018/6/10.
//  Copyright © 2018年 AKI. All rights reserved.
//

func HumanReadableDateFormat(_ orginalSecond:Int) -> String {

    let Year = (orginalSecond/60/60/24/365)
    var secondsCalculate = orginalSecond % (60*60*24*365)
    let Day = (secondsCalculate/60/60/24)
    secondsCalculate = secondsCalculate % (60*60*24)
    let Hour = (secondsCalculate/60/60)
    secondsCalculate = secondsCalculate % (60*60)
    let Minute = (secondsCalculate/60)
    secondsCalculate = secondsCalculate % 60
    let Second = secondsCalculate

    var resultYears = ""
    var resultDays = ""
    var resultHours = ""
    var resultMinutes = ""
    var resultSecond = ""
    var resultFinal = ""

    resultSecond = FormatFactory(Second,"Second")
    resultMinutes = FormatFactory(Minute,"Minute")
    resultHours = FormatFactory(Hour,"Hour")
    resultDays = FormatFactory(Day,"Day")
    resultYears = FormatFactory(Year,"Year")
    
    resultFinal = Conjunction(resultMinutes,resultSecond,false)
    resultFinal = Conjunction(resultHours,resultFinal,resultFinal.contains("and"))
    resultFinal = Conjunction(resultDays,resultFinal,resultFinal.contains("and"))
    resultFinal = Conjunction(resultYears,resultFinal,resultFinal.contains("and"))
    
    return resultFinal == "" ? "0 Second" : resultFinal
}

func Conjunction(_ str1:String,_ str2:String,_ hadAnd:Bool)->String{
 
    if(str1 == ""){
        return str2
    }
    if str2 == "" {
        return str1
    }
    
    return "\(str1)\(hadAnd ? ", ":" and ")\(str2)"
    
}

func FormatFactory(_ cnt:Int,_ Symbol:String)->String{
    if cnt == 0 {
        return ""
    }
    return "\(cnt) \(Symbol)\((cnt > 1 ? "s" : ""))"
}
