import UIKit

func plus(_ leftNumber: String, _ rightNumber: String) -> String {
    var leftNumbers = leftNumber.reversed().map {Int(String($0))}
    var rightNumbers = rightNumber.reversed().map {Int(String($0))}
    var result = [Int]()
    if leftNumbers.count < rightNumbers.count {
        for _ in 0..<(rightNumbers.count - leftNumbers.count) {
            leftNumbers.append(0)
        }
    }
    else {
        for _ in 0..<(leftNumbers.count - rightNumbers.count) {
            rightNumbers.append(0)
        }
    }
    var temp = 0
    for i in 0..<leftNumbers.count {
        let t = leftNumbers[i]! + rightNumbers[i]! + temp
        temp = t >= 10 ? 1 : 0
        if i != leftNumbers.count - 1 {
            result.append(t % 10)
        }
        else {
            result.append(t)
        }
    }
    return result.reversed().map { t -> String in
        return String(t)
        }.reduce("", { rs, item -> String in
            return rs + item
        })
}
