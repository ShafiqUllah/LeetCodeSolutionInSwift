class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var hash : [Int: Int] = [:]
        
        for num in nums {
            hash[num,default: 0] += 1
        }
        //print(hash)
        var maxi = 0
        var result = nums[maxi]
        for (k,v) in hash{
            //print("key \(k) val \(v)")

            if maxi < v {
                maxi = v
                result = k
            }
            
        }
        
        return result
    }
}
