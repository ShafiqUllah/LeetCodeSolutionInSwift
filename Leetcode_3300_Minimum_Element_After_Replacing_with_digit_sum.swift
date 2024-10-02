class Solution {
    func minElement(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var result : Int = nums[nums.count - 1]
        for num in nums {
            var temp = 0
            var num = num
            while num >= 10{
                temp += num % 10
                num = num / 10
            }
            temp += num
            
            result = min(result, temp)
        }
        return result
    }
}
