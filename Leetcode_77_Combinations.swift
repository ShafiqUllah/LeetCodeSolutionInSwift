class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var ans = [[Int]]()
        let data = Array(1...n)
        
        
        
        var tempArr = [Int]()
        
        
        func solve(_ idx:Int, _  temp: inout [Int] ){
            if temp.count >= k{
                ans.append(temp)
                return
            }
            
            for i in idx..<n{
                temp.append(data[i])
                //print(temp)
                solve(i + 1, &temp)
                temp.removeLast()
            }
        }
        
        solve(0, &tempArr)
        print(ans)
        return ans
    }
}

// chatgpt solution


class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result = [[Int]]()  // Array to store the final list of combinations
        var combination = [Int]()  // Temporary array to store current combination

        // Backtracking function
        func backtrack(start: Int) {
            // Base case: if the combination has reached the size `k`, add to results
            if combination.count == k {
                result.append(combination)
                return
            }
            
            // Explore each number starting from `start`
            for i in start...n {
                combination.append(i)  // Add current number to combination
                backtrack(start: i + 1)  // Recursive call with the next starting index
                combination.removeLast()  // Backtrack by removing the last element
            }
        }

        backtrack(start: 1)  // Initialize backtracking with `start` at 1
        return result
    }
}

