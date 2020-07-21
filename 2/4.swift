import Foundation

import Foundation
var array:[Int] = []
func gain(number1:Int = 0, step: Int = 0) -> [Int]{
    array.append(number1)
    for i in 1...99 {
        array.append(array[i-1] + step)
    }
    return(array)
}

gain(number1: 1, step: 1)

func terminater(arr:[Int]){
    var resultArray: [Int] = arr
    for j in stride(from: 99, through: 0, by: -1)  {
        if resultArray[j] % 3 != 0 || resultArray[j] % 2 == 0  {
            resultArray.remove(at: j)
        }
    }
    print(resultArray)
}

terminater(arr: array)
