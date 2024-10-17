class Solution_670 {
    func maximumSwap(_ num: Int) -> Int {
        
        var arr = String(num)
        
        
        var numInArray = Array(repeating: -1, count: arr.count)
        var maxRight = Array(repeating: -1 , count: arr.count)
        
        while !arr.isEmpty{
            if let val = arr.removeLast().wholeNumberValue{
                numInArray[arr.count] = val
            }
        }
        
        //convery the number in array - you can write this way also, more readable, and swifty
        //        var numInArray = String(num).compactMap{
        //            $0.wholeNumberValue
        //        }
        
        
        
        // last element direct assign
        if numInArray.isEmpty{
            return num
        }else{
            maxRight[numInArray.count - 1] = numInArray.count - 1
        }
        
        
        // Populate the rightMax array
        for i in (0..<numInArray.count - 1).reversed(){
            if numInArray[i] > numInArray[maxRight[i + 1]]{
                maxRight[i] = i
            }else{
                maxRight[i] = maxRight[i + 1]
            }
        }
        
        //you can write like this also
        // Populate the maxRight array
        //                for i in stride(from: n - 2, through: 0, by: -1) {
        //                    maxRight[i] = digits[i] > digits[maxRight[i + 1]] ? i : maxRight[i + 1]
        //                }
        
        
        
        for i in 0..<maxRight.count{
            
            if numInArray[i] < numInArray[maxRight[i]]{
                // swifty way
                numInArray.swapAt(i, maxRight[i])
                
                //traditional way
//                let temp = numInArray[i]
//                numInArray[i] = numInArray[maxRight[i]]
//                numInArray[maxRight[i]] = temp
                break
            }
        }
        
        
        
        var sum = 0
        for n in numInArray{
            sum = sum * 10 + n
        }
        
        // you can write this way also
        //        let sum = numInArray.reduce(0) { $0 * 10 + $1 }
        
        return sum > num ? sum : num
    }
}

print(Solution_670().maximumSwap(9937))
