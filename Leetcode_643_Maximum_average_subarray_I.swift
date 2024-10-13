class Solution_643 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        //Using Sliding Window techniq
        // find the sum of first window
        var average: Double = 0
        let size = k
        var sum: Double = 0
        for i in 0..<size{
            sum += Double(nums[i])
            //print(sum)
        }
        
        //print(sum)
        
        average = sum / Double(size)
        print(average)
        
        var i = 0
        var j = size - 1
        
        // Start sliding
        while j < nums.count - 1{
            //remove left element
            sum -= Double(nums[i])
            i += 1
            
            //add next element
            j += 1
            sum += Double(nums[j])
            
            // find new average and update
            average = max(average, sum / Double(size))
        }
        
        return average
    }
}

print(Solution_643().findMaxAverage([-1], 1))
