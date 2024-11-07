class Solution {
    func largestCombination(_ candidates: [Int]) -> Int {
        
        var bitMapArr = [[Character]]()
        var oneBitCount = Array(repeating: 0, count: 24)
        
        for (i, c) in candidates.enumerated() {
            bitMapArr.append(Array(String(c, radix: 2)))
        }
        
        while !bitMapArr.isEmpty{
            let temp = bitMapArr.removeLast()
            for (i,c) in temp.reversed().enumerated(){
                if c == "1"{
                    oneBitCount[i] += 1
                }
            }
        }
        
        //print(oneBitCount)
        
        return oneBitCount.sorted(by: >).first ?? 0
    }
}

// TLE khaise

class Solution_2 {
    func largestCombination(_ candidates: [Int]) -> Int {
        
        var comSize = candidates.count
        var temp = [Int]()
        
        var flag = false
        var ansCount = 0
        
        func bitWiseAnd(_ nums: [Int])->Int{
            guard let first = nums.first else{
                return 0
            }
            return Int(nums.dropFirst().reduce(first, &))
        }
        
        func combination(_ start: Int){
            if temp.count == comSize{
                if bitWiseAnd(temp) > 0{
                    flag = true
                    ansCount = temp.count
                }
                //ans.append(temp)
                return
            }
            
            for i in start..<candidates.count{
                temp.append(candidates[i])
                combination(i + 1)
                temp.removeLast()
            }
        }
        
        
        for _ in (0...comSize).reversed(){
            if !flag{
                combination(0)
            }else{
                break
            }
            comSize -= 1
            
        }
        
        
        
        return ansCount
    }
}


// Chatgpt solution
func largestCombination(_ candidates: [Int]) -> Int {
    var maxCount = 0

    // Iterate over each bit position from 0 to 31
    for bitPosition in 0..<32 {
        var count = 0
        for num in candidates {
            // Check if the current bit position has a `1`
            if (num & (1 << bitPosition)) != 0 {
                count += 1
            }
        }
        // Update maxCount with the maximum count found at any bit position
        maxCount = max(maxCount, count)
    }

    return maxCount
}

