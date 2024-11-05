
// This solution is not accepted , Getting TLE, Solved using backtracking

class Solution_15 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
      
        var set = Set<[Int]>()
        let sortedNum = nums.sorted()
        
        func solve(_ idx:Int ,_ temp : inout [Int]){
            if temp.count == 3{
                if temp.reduce(0, +) == 0{
                    if !set.contains(temp){
                        set.insert(temp)
                    }
                }
                
                return
            }
            
            for i in idx..<sortedNum.count{
                
                if i > idx , sortedNum[i] == sortedNum[i - 1]{ // skip duplicate element
                    continue
                }
                
                temp.append(sortedNum[i])
                solve(i + 1, &temp)
                temp.removeLast()
            }
        }
        var t = [Int]()
        solve(0, &t)
        
        //print(ans)
        return Array(set)
    }
}
