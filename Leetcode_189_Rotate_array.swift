class Solution_189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        var tempArr = [Int]()
        var size = nums.count
        var k = k
        if k >= size{
            k = k % size
            return
        }
        
        for _ in 0..<k{
            tempArr.append(nums.removeLast())
        }
        
        tempArr = tempArr.reversed()
        
        while !nums.isEmpty{
            tempArr.append(nums.removeFirst())
        }
        
        nums = tempArr
    }
}




