class Solution_26 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var set = Set<Int>()
        
        for num in nums {
            set.insert(num)
        }
        
        let set_in_array = Array(set).sorted()
        for i in 0..<set_in_array.count{
            nums[i] = set_in_array[i]
        }
        
        return set.count
    }
}

//Chatgpt solution
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0 // Return 0 if the array is empty
        }
        
        var uniqueIndex = 1 // Start from the second element

        for i in 1..<nums.count {
            if nums[i] != nums[i - 1] { // If the current number is different from the previous
                nums[uniqueIndex] = nums[i] // Update the unique index position
                uniqueIndex += 1 // Move to the next unique position
            }
        }
        
        return uniqueIndex // Length of the array with unique elements
    }
}
