class Solution_3011 {
    func canSortArray(_ nums: [Int]) -> Bool {
        
        print(nums)
        
        // can be replaced by buildIn Func number.nonzeroBitCount
        func numOfSetBit(_ n: Int)-> Int{
            let binary = Int(String(n, radix: 2))
            var ans = 0
            guard let binary = binary else{
                return 0
            }
            var binaryNum = binary
            
            while binaryNum > 0{
                let bit = binaryNum % 10
                if bit == 1{
                    ans += 1
                }
                binaryNum = binaryNum / 10
            }
            
            return ans
            
        }
        
        var bitCountNums  = [Int]()
        
        for n in nums{
            bitCountNums.append(numOfSetBit(n))
        }
        
        //print(bitCountNums)
        
        var nums = nums
        
        for _ in 0..<nums.count{
            for j in 0..<nums.count - 1{
                if nums[j] > nums[j + 1]{
                    if bitCountNums[j] != bitCountNums[j + 1]{
                        //print(j,j+1)
                        return false
                    }else{
                        nums.swapAt(j, j + 1)
                    }
                    //print(nums)
                }
            }
        }
        
        
        return true
    }
}
