class Solution_27 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var stack = [Int]()
        
        for i in 0..<nums.count{
            if val != nums[i]{
                stack.append(nums[i])
            }
        }
        
        var currentIndex = 0
        while !stack.isEmpty{
            nums[currentIndex] = stack.removeFirst()
            currentIndex += 1
        }
        
        return currentIndex
    }
}
