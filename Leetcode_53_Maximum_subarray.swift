class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        // Initialize variables to track the maximum sum and current subarray sum
        var currentSum = nums[0]
        var maxSum = nums[0]
        
        // Iterate through the array, starting from the second element
        for i in 1..<nums.count {
            // Update current sum to either the current element itself or the current sum + the element
            currentSum = max(nums[i], currentSum + nums[i])
            
            // Update the maximum sum found so far
            maxSum = max(maxSum, currentSum)
        }
        
        // Return the maximum sum
        return maxSum
    }
}
