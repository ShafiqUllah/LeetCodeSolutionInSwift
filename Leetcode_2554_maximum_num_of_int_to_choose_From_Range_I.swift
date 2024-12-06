class Solution_2554 {
    func maxCount(_ banned: [Int], _ n: Int, _ maxSum: Int) -> Int {
        var ans = [Int]()
        //var bannedSet : Set<Int> = Set(banned)
        var sum = 0
        for i in 1...n{
            
            if !banned.contains(i) && (sum + i) <= maxSum {
                ans.append(i)
                sum += i
            }
            
            if sum + 1 >= maxSum{
                break
            }
        }
        
        return ans.count
    }
}
