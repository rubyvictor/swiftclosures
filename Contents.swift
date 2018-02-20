//: A UIKit based Playground for presenting user interface
  
import UIKit

func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetNumbers = [Int]()
    
    for num in numbers {
        if num < value {
            filteredSetNumbers.append(num)
        }
    }
    
    return filteredSetNumbers
}

//let filteredList = filterLessThanValue(value: 5, numbers: [1,3,8,2,99,32])

func filterWithClosure(closure: (Int) -> Bool, numbers:[Int]) -> [Int] {
var filteredNumbers = [Int]()
for num in numbers {
        if closure(num) {
            filteredNumbers.append(num)
    }
}
return filteredNumbers
}

let filteredList = filterWithClosure(closure: { (num) -> Bool in
return num < 5
}, numbers: [1,3,8,2,99,32])
print(filteredList)
