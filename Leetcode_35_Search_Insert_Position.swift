class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        func solve(_ startIdx: Int, _ endIdx:Int)->Int{
            print(startIdx, endIdx)
           
            if startIdx >= endIdx{
                return min(startIdx, endIdx)
            }
            
            let mid = startIdx + (endIdx - startIdx) / 2
            print("Mid", mid)
            
            if nums[mid] == target{
                return mid
            }else if nums[mid] > target{
                return solve(startIdx, mid)
            }else{
                return solve(mid + 1, endIdx)
            }
            
        }

        if nums.count == 1{
            return nums[0] >= target ? 0 : 1
        }
        
        if nums[0] > target{
            return 0
        }
        
        if nums[nums.count - 1] < target{
            return nums.count
        }
        
        
        return solve(0, nums.count - 1)
    }
}


// chatgpt ans
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1

    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return left
}

