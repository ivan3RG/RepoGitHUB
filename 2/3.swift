import Foundation

func hundred() -> [Int]{
    var arr:[Int]=[]
    for i in 1...100{
        arr.append(i)
    }
    return arr
}


var a = hundred()
print(a)
