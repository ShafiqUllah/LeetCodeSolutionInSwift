class Solution_3152_with_TLE {
    func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        var ans = [Bool]()

        for query in queries {

            let currentArr = nums[query[0]...query[1]]
            if currentArr.count <= 1{
                ans.append(true)
                continue
            }
            var evenFlag: Bool = currentArr.first! % 2 == 0
            var isOkFlag = true

            for i in query[0] + 1...query[1]{
                let tempFlag : Bool = currentArr[i] % 2 == 0
                if tempFlag == evenFlag{
                    ans.append(false)
                    isOkFlag = false
                    break
                }else{
                    evenFlag = tempFlag
                }
            }
            if isOkFlag{
                ans.append(true)
            }
        }

        return ans
    }
}

class Solution_3152 {
    func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        var ans = [Bool]()
        
        var preSum = [Int]()
        var count  = 0
        
        var flag  = nums.first! % 2 == 0
        preSum.append(0)
        
        for i in 1..<nums.count{
            let tempNum = nums[i]
            let tempFlag = tempNum % 2 == 0
            if tempFlag == flag{
                count += 1
                
            }
            flag = tempFlag
            preSum.append(count)
        }
        
        for query in queries {
            if preSum[query[0]] - preSum[query[1]] == 0{
                ans.append(true)
            }else{
                ans.append(false)
            }
        }
        
        return ans
    }
}

//Solution_3152().isArraySpecial([3,4,1,2,6], [[0,4]])
Solution_3152().isArraySpecial([4,3,1,6], [[0,2],[2,3]])
