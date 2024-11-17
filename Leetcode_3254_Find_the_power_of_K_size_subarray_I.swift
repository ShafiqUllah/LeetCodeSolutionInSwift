class Solution_3254 {
    func resultsArray(_ nums: [Int], _ k: Int) -> [Int] {
        
        var ans = [Int]()
        
        for i in 0..<nums.count - k + 1{
            var newArr = Array(nums[i..<i+k])
            print(newArr)
            
            if newArr != Array(Set(newArr)).sorted(){ // make set first, so no duplicate here, than sort and check
                print("skip")
                ans.append(-1)
                continue
            }
            
            if k < 2{ // if elemet is only 1, get the element
                ans.append(newArr.removeFirst())
                continue
            }
            
            //finding consicutive array(the array that each element diff is 1, like 1,2,3,4 or 23,24,25)
            let maxV = newArr.max()!
            let minV = newArr.min()!
            
            if maxV - minV + 1 != newArr.count{
                ans.append(-1)
            }else{
                ans.append(newArr.removeLast())
            }
        }
        
        return ans
    }
}

Solution_3254().resultsArray([1,2,2,4,2], 4)

/*
 // chatgpt ans
 class Solution {
     func resultsArray(_ nums: [Int], _ k: Int) -> [Int] {
         var streak = 0     // Consecutive number count.
         var res = [Int]()

         for i in nums.indices {
             if i > 0 && nums[i] == nums[i - 1] + 1 {
                 // Last 2 numbers are consecutive.
                 streak = min(k, streak + 1)
             } else {
                 // Non-consecutive numbers.
                 streak = 1
             }

             // Append max ("nums[i]") if k consecutive numbers.
             // Or -1 otherwise.
             if i + 1 >= k { res.append(streak == k ? nums[i] : -1) }
         }

         return res
     }
 }
 */
