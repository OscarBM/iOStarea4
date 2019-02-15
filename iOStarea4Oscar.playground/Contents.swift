import UIKit

var str = "Hello, playground"

var rotatedWords = [
    "pepe",
    "retrogrado",
    "suplantar",
    "uruguay",
    "xenofobia",
    "asintota",
    "barba",
    "baquero",
    "engendrar",
    "karla",
    "oracion"
]


func getRotated (_ strs:[String]) -> Int{
    var rotate:Int = 0
    var indexS:Int = 1
    
    while indexS < strs.count {
        if strs[indexS-1].unicodeScalars[strs[indexS-1].unicodeScalars.startIndex].value
            > strs[indexS].unicodeScalars[strs[indexS].unicodeScalars.startIndex].value{
            rotate = indexS + 1
            indexS = strs.count
        }
        
        indexS += 1
    }
    
    return rotate
}

getRotated(rotatedWords)
