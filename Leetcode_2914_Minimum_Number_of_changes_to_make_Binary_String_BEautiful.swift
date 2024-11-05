class Solution {
    func minChanges(_ s: String) -> Int {
        var ans = 0
        var temp = Array(s)
        

        // This approch will get TLE
        // while !temp.isEmpty, temp.count > 1{
        //     if temp.removeFirst() != temp.removeFirst(){
        //         ans += 1
        //     }
        // }
        
        for i in stride(from: 1, to: temp.count, by: 2) {
            if temp[i - 1] != temp[i] {
                ans += 1
            }
        }
        
        return ans
    }
}
