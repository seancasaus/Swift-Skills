import UIKit

//protocols set blueprint for values we need to use

//syntax
protocol Number {
    //function
    //func getFloatValue()
    
    //property
    var floatValue: Float {get}
}

//float protocol
extension Float: Number {
    var floatValue: Float {
        return self //return itself
    }
}

//double protocol
extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

//int potocol
extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

//Uint
extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

//math operators
func +(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue * valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue / valueB.floatValue
}




let x: Double = 1.2347
let y: Int = 5
let q = x / y
