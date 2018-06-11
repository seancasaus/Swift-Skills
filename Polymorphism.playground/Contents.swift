//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) * 0.5
    }
}

class Square: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB)
    }
}
