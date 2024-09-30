class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        var mem_left  = [Int](repeating: -1, count: nums.count )
        var mem_right = [Int](repeating: -1, count: nums.count )
        for (index, _) in nums.enumerated(){
            if index == 0 {
                result.append(rec_right(nums, index + 1))
            }else if index == nums.count - 1{
                result.append(rec_left(nums, index - 1))
            }else{
                let l = rec_left(nums, index - 1)
                let r = rec_right(nums, index + 1)
                result.append(l * r)
            }
        }
        
        
        
        func rec_left(_ num : [Int], _ primaryIndex: Int) -> Int{
            if primaryIndex == 0 {
                mem_left[0] = num[0]
                return mem_left[0]
            }
            
            if mem_left[primaryIndex] != -1{
                return mem_left[primaryIndex]
            }
            
            mem_left[primaryIndex] = rec_left(num, primaryIndex - 1) * num[primaryIndex]
            
            return mem_left[primaryIndex]
        }
        
        func rec_right(_ num : [Int], _ primaryIndex: Int) -> Int{
            if primaryIndex == num.count - 1 {
                mem_right[num.count - 1] = num[num.count - 1]
                return mem_right[num.count - 1]
            }
            
            if mem_right[primaryIndex] != -1{
                return mem_right[primaryIndex]
            }
            
            mem_right[primaryIndex] = rec_right(num, primaryIndex + 1) * num[primaryIndex]
            
            return mem_right[primaryIndex]
        }
        
        return result
    }
    
    
}
