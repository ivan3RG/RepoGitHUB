func fibbonacci(arr: [Double] = []){
    var result: [Double] = arr
    for i in 0...93 {
        if result.count == 0 {
            result.append(0.0)
        } else if result.count == 1 {
            result.append(1.0)
        }else{
            result.append(result[i-1] + result[i-2])
        }
    }
print(result)
}

fibbonacci(arr:[])
