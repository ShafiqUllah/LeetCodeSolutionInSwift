class Solution {
    var hash : [Int : Int] = [:]
    func climbStairs(_ n: Int) -> Int {
        
        if n == 0 {
            return 1
        }
        
        if n < 0 {
            return 0
        }
        
        if let val = hash[n]{
            return val
        }
        hash[n] = climbStairs(n - 1) + climbStairs( n - 2)
        
        return hash[n]!
    }
}

