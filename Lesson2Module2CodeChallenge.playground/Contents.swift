//: Enum's Associated values

import UIKit

enum BarCode {
    case UPCA(numberSystem: Int, manufacturer: Int, product: Int, check: Int)
    case QRCode(productCode: String)
    
    func description() -> String {
        switch self {
        case .UPCA(let numberSystem, let manufacturer, let product, let check):
            return "UPC-A: \(numberSystem), \(manufacturer), \(product), \(check)."
        case .QRCode(let productCode):
            return "QR Code: Apple \(productCode)."
            
        }
    }
    
}

let productOne = BarCode.UPCA(numberSystem: 234, manufacturer: 395, product: 2349, check: 324).description()
print(productOne.description)

let productTwo = BarCode.QRCode(productCode: "Platinum iPhone 8, 128gb").description()
print(productTwo.description)