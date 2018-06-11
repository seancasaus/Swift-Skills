import UIKit

enum NameOfEnum {
    //give cases
    case caseOne
    case caseTwo
    case caseThree
}

let enumeration: NameOfEnum = .caseTwo

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//actually
productBarcode = .qrCode("dsdfgghhghjghjhjhghjfgjhdsddhgfhgkjg")

switch productBarcode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC \(numberSystem),\(manufacturer),\(product),\(check) ")
    case let .qrCode(productCode):
        print("QR Code: \(productCode)")
}

enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonJinn = "Qui Gon Jin"
    case obiWanKenobi = "Obi-Wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.yoda.rawValue)

enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .off

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

print(switchStatus)
switchStatus = flipSwitch(status: switchStatus)
print(switchStatus)

