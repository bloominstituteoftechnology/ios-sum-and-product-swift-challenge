import UIKit

func sumAndProduct(_ sum: UInt, _ product: UInt) -> [UInt] {
    var a: UInt = 0
    var result: [UInt] = []
    
    for x in 1...sum {
        if sum % x == 0 {
            if product % x == 0 {
                a = product / x
                if x + a == sum {
                    result.append(a)
                    result.append(x)
                    break
                }
            }
        }
    }
    return result.sorted()
}

sumAndProduct(5, 225)
