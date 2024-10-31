class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var sortedNum = nums.sorted()
        var ans = -1
        var i = 0

        while i < sortedNum.count - 1{
            if sortedNum[i] != sortedNum[i + 1]{
                ans = sortedNum[i]
                return ans
                
            }

            i += 2
        }

        if ans == -1{
            return sortedNum[sortedNum.count - 1]
        }
        return ans
    }
}

// from chatgpt
func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for num in nums {
        result ^= num
    }
    return result
}

/*
 One optimal approach to solve this is to use the XOR operator. XOR has a property where:

 a ^ a = 0 (any number XOR'd with itself is 0)
 a ^ 0 = a (any number XOR'd with 0 is the number itself)
 XOR is also commutative and associative, so the order of operations doesn’t matter.
 */

