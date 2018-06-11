//: Playground - noun: a place where people can play

import UIKit

let optionalImage: UIImage? = #imageLiteral(resourceName: "california-flag.jpg")

var optionalNumber: Int? = 5
var number: Int  = 5

if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber!)")
} else {
    //handle errors
}

//optional binding
if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optionalNumber is null")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else {return}
    print("constantNumber has a value of \(constantNumber)")
}

intPrinter()

//implicitly unwrapped optionals
let assumedValue: Int! = 5
let implicitVlaue: Int = assumedValue

//Nil Coalescing & Using Ternary Operator
let optionalInt: Int? = nil
let result = optionalInt ?? 0 //similar to if else

class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let atendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = atendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This attendee has not purchased a ticket")
}






