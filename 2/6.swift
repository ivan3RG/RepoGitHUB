import Foundation

func simple(n: Int) -> [Int?]{   

    var p: Int = 2
    var arr:[Int?] = []
    var arrMiddle:[Int] = []

    for i in (1...(n-1)){
        arrMiddle.append(i+1)
    }

    while p != arrMiddle[arrMiddle.count-1] && arr.count<100 {
    
        for j in stride(from: (arrMiddle.count-1), through: 0, by:-1){
            if (arrMiddle[j] % p) == 0{
                arrMiddle.remove(at: j)
            }
        }
    arr.append(p)
    p = arrMiddle[0]
    }
   arr.append(p)
   while arr.count < 100{
       arr.append(nil)
   }
   return arr
}

print(simple(n: 1000))
