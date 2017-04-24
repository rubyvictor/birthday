//: Playground - noun: a place where people can play

import UIKit
import Foundation

//3 different methods of getting Day of week as a string from date

func getDayNameBy(stringDate: String) -> String
{
    let df  = DateFormatter()
    df.dateFormat = "YYYY-MM-dd"
    let date = df.date(from: stringDate)!
    df.dateFormat = "EEEE"
    return df.string(from: date);
}

getDayNameBy(stringDate: "2017-12-08")



func getDayOfWeekString(today:String)->String? {
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    if let todayDate = formatter.date(from: today) {
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        let myComponents = myCalendar.components(.weekday, from: todayDate)
        let weekDay = myComponents.weekday
        switch weekDay {
        case 1?:
            return "Sun"
        case 2?:
            return "Mon"
        case 3?:
            return "Tue"
        case 4?:
            return "Wed"
        case 5?:
            return "Thu"
        case 6?:
            return "Fri"
        case 7?:
            return "Sat"
        default:
            print("Error fetching days")
            return "Day"
        }
        
    } else {
        return nil
    }
    
    
    
}
getDayOfWeekString(today: "2017-12-08")


func fetchDayOfWeekString(today:String)->String? {
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    if let todayDate = formatter.date(from: today) {
        let myCalendar: NSCalendar = NSCalendar.current as NSCalendar
        let myComponents = myCalendar.components(.weekday, from: todayDate)
        let weekDay = myComponents.weekday
        let weekDays = [
            "Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Satudrday",
            ]
        return weekDays[weekDay! - 1]
        
    } else {
        return nil
    }
   
}
fetchDayOfWeekString(today: "2017-12-08")


