//: A UIKit based Playground for presenting user interface
// Inspired by LetsBuildThatApp channel


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
        if closure(num) { // if the closure using an Int returns a Bool value
            filteredNumbers.append(num)
    }
}
return filteredNumbers
}

// Refine closure further to contain closure logic within another function
func greaterThanFive(value: Int) -> Bool {
    return value > 5
}

func divisibleByFive(value: Int) -> Bool {
    return value % 5 == 0
}

//let filteredList = filterWithClosure(closure: greaterThanFive, numbers: [10,5,1,2,0,11,14,7])
//print(filteredList)

let filteredList = filterWithClosure(closure: divisibleByFive, numbers: [10,5,1,2,0,11,14,7])

//let filteredList = filterWithClosure(closure: { (num) -> Bool in
//return num < 20
//}, numbers: [1,3,8,2,10,15,20,22,18,99,32])
//print(filteredList)

