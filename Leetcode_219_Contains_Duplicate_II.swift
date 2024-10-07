class Solution_219 {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        // make subarray with length
        
        for i in 0..<nums.count{
            for j in i + 1..<nums.count where j < i + k{
                if nums[i] == nums[j] , abs(i - j) <= k {
                    return true
                }
            }
        }
        return false
        
    }
}
