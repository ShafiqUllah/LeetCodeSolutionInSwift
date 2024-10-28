class Solution {
    func longestSquareStreak(_ nums: [Int]) -> Int {
        // Remove duplicates and sort in descending order
        let nums = Array(Set(nums)).sorted(by: >)
        
        var dp = [Int: Int]() // Dictionary to store streak lengths
        var longestStreak = 0
        
        for num in nums {
            dp[num] = 1 // Start a streak with this number
            
            let squaredNum = num * num
            if dp[squaredNum] != nil {
                dp[num]! += dp[squaredNum]! // Extend the streak
            }
            
            longestStreak = max(longestStreak, dp[num]!)
        }
        
        return longestStreak < 2 ? -1 : longestStreak
    }
}
