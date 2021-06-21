import UIKit

func timeAdder(value1 : Int,label1 : String,value2 : Int,label2 : String) -> String{
    var value3 : Int = 0
    var label3 : String = ""
    let list : [String] = ["second","minute","hour","day"]
    let lists : [String] = ["seconds","minutes","hours","days"]
    var returnornot : String = ""
    if (value1 == 1){
        for name in lists{
            if (label1 == name){
                returnornot = "false"
                return "false"
            }
        }
    }else if(value2 == 1){
        for name in lists{
            if (label2 == name){
                returnornot = "false"
                return "false"
            }
        }
    }else if(value1 > 1){
        for name in list{
            if (label1 == name){
                returnornot = "false"
                return "false"
            }
        }
    }else if (value2 > 1){
        for name in list{
            if (label2 == name){
                returnornot = "false"
                return "false"
                
            }
        }
    }
    if (returnornot == "false"){
        returnornot = "true"
    }else if (label1 == label2) {
        if (label1 == "seconds") {
            value3 = value1 + value2
            label3 = "seconds"
            if (value3%60 == 0) {
                value3 = value3/60
                if (value3 > 1){
                    label3 = "minutes"
                }else{
                    label3 = "minute"
                }
            }
        }else if (label1 == "minutes"){
            value3 = value1 + value2
            label3 = "minutes"
            if (value3%60 == 0){
                value3 = value3/60
                if (value3 > 1){
                    label3 = "hours"
                }else{
                    label3 = "hour"
                }
            }
        }else if (label1 == "hours"){
            value3 = value1 + value2
            label3 = "hours"
            if (value3%24 == 0){
                value3 = value3/24
                if (value3 > 1){
                    label3 = "days"
                }else{
                    label3 = "day"
                }
            }
        }else if (label1 == "days"){
            value3 = value1 + value2
            label3 = "days"
        }else{
            returnornot = "false"
            return "false"
        }
    }else if (label1 == label2 + "s" || label2 == label1 + "s"){
         if (label1 == "seconds" || label2 == "seconds") {
             value3 = value1 + value2
             label3 = "seconds"
             if (value3%60 == 0) {
                 value3 = value3/60
                 if (value3 > 1){
                     label3 = "minutes"
                 }else{
                     label3 = "minute"
                 }
             }
         }else if (label1 == "minutes" || label2 == "minutes"){
             value3 = value1 + value2
             label3 = "minutes"
             if (value3%60 == 0){
                 value3 = value3/60
                 if (value3 > 1){
                     label3 = "hours"
                 }else{
                     label3 = "hour"
                 }
             }
         }else if (label1 == "hours" || label2 == "hour"){
             value3 = value1 + value2
             label3 = "hours"
             if (value3%24 == 0){
                 value3 = value3/24
                 if (value3 > 1){
                     label3 = "days"
                 }else{
                     label3 = "day"
                 }
             }
         }else if (label1 == "days" || label2 == "days"){
            value3 = value1 + value2
            label3 = "days"
         }else{
            returnornot = "false"
            return "false"
        }
    }else{
        return "false"
    }
    return String(value3) + label3
}

var test1 = timeAdder(value1: 40, label1: "minutes", value2: 20, label2: "minutes")
print(test1)
