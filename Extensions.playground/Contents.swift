//: Playground - noun: a place where people can play
import UIKit

class newClass {
    //functionality
}

extension newClass {
    
}

//string extension
extension String {
    func reverse() -> String {
        var characterArray = [Character]()
        for character in self {
            characterArray.insert(character, at: 0)
        }
        return String(characterArray).lowercased()
    }
}

var name = "Darth Maul"
name.reverse()

//int extension
extension Int {
    func square() -> Int {
        return self * self
    }
}

var val = 24
val.square()

extension Double {
    //non mutating
    func calcArea() -> Double {
        let pi = 3.1415
        return pi * (self * self)
    }
    
    //mutating
    mutating func mutateArea() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

//make circle
var circle = Circle(radius: 5.0)
print("Original Radius: \(circle.radius)")

circle.radius.calcArea()
print("Nonmutating Radius: \(circle.radius)")
print("Nonmutating Function Call: \(circle.radius.calcArea())")

circle.radius.mutateArea()
print("Mutating Radius: \(circle.radius)")

