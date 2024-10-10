class Solution {
    func maxWidthRamp(_ nums: [Int]) -> Int {
        
        // brute force
//        var ramp = 0
//
//        for i in 0..<nums.count{
//            for j in i + 1..<nums.count{
//                if nums[i] <= nums[j]{
//                    ramp = max(ramp, j - i)
//                }
//            }
//        }
//
//        return ramp
        
        
        // better brute force
//        var ramp = 0
//
//        for i in 0..<nums.count{
//            for j in (i+1..<nums.count).reversed(){
//                if nums[i] <= nums[j]{
//                    ramp = max(ramp, j - i)
//                    break
//                }
//            }
//        }
//
//        return ramp
        
        
        // Best approach
        
        var rightmax = nums
        rightmax[nums.count - 1] = nums[nums.count - 1]
        
        for i in (0..<nums.count - 1).reversed(){
            rightmax[i] = max(rightmax[i + 1], nums[i])
        }
        
        var ramp = 0
        var i = 0 // nums
        var j = 0 // rightMax
        
        while j < nums.count{
            while nums[i] > rightmax[j], i < j{
                i += 1
            }
            
            ramp = max(ramp, j - i)
            j += 1
        }
        
        return ramp
    }
}

//https://www.youtube.com/watch?v=mcJBhWXel-Y&ab_channel=codestorywithMIK
