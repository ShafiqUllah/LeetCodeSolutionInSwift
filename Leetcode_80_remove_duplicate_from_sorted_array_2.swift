class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var hash : [Int: Int] = [:]
        var stack = [Int]()
        
        for i in 0..<nums.count{
            if let count = hash[nums[i]], count < 2{
                hash[nums[i]]! += 1
                stack.append(nums[i])
            }else if let count = hash[nums[i]], count == 2{
                //do nothing
            }else{
                hash[nums[i]] = 1
                stack.append(nums[i])
            }
        }
        
        let result = stack.count
        for i in 0..<stack.count{
            nums[i] = stack.removeFirst()
        }
        return result
    }
}
