class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        var data = candidates
        var temp = [Int]()
        var ans = Set<[Int]>()
        
        func solve(_ idx:Int, _ soFarValue: inout [Int] ){
            if soFarValue.reduce(0, +) > target{
                return
            }
            
            if soFarValue.reduce(0, +) == target{
                ans.insert(soFarValue.sorted())
                return
            }
            
            for i in 0..<data.count{
                soFarValue.append(data[i])
                
                solve(idx, &soFarValue)
                
                soFarValue.removeLast()
            }
        }
        
        solve(0, &temp)
        
        //print(ans)
        return Array(ans)
    }
}

// chatgpt solution
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result = [[Int]]()
    var currentCombination = [Int]()
    
    func backtrack(_ remaining: Int, _ start: Int) {
        if remaining == 0 {
            result.append(currentCombination)
            return
        }
        
        for i in start..<candidates.count {
            let candidate = candidates[i]
            if candidate > remaining {
                continue
            }
            
            currentCombination.append(candidate)
            backtrack(remaining - candidate, i)  // Call backtrack with the same index `i` since we can reuse the same element
            currentCombination.removeLast()      // Backtrack by removing the last added element
        }
    }
    
    backtrack(target, 0)
    return result
}

