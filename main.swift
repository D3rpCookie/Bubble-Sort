import Foundation
var unsortedString = [""] 
var unsortedIntegers: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var i = 0
var k = 0
var x:Float = 0
for _ in unsortedString {
    for s in unsortedString[i].utf8 {
        x += Float(s)/pow((1000.0), Float(k))
        k += 1 
    }
    unsortedIntegers.append(Int(x))
    k = 0
    i += 1
    x = 0 
}
var arr = unsortedIntegers
for _ in 0...arr.count {
    for value in 1...arr.count - 1 {
        if arr[value-1] > arr[value] {
            let largerValue = arr[value-1]
            let largerString =  unsortedString[value-1]
            unsortedString[value-1] = unsortedString[value]
            unsortedString[value] = largerString
           
            arr[value-1] = arr[value]
            arr[value] = largerValue
        }
    }
}

