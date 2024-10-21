class Solution_1593 {
    func maxUniqueSplit(_ s: String) -> Int {
        // This is greed approch, failed at some test case
//        var uniqueSubString = Set<String>()
//
//        var temp = ""
//
//        for c in s{
//            temp += String(c)
//            if !uniqueSubString.contains(temp){
//                uniqueSubString.insert(temp)
//
//                print(temp)
//                temp = ""
//            }
//        }
//
//        return uniqueSubString.count
        
        
        
        
        func solve(_ s:String, _ i:Int, _ st :inout Set<String>, _ cuurCount:Int, _  maxCount:inout Int){
            if cuurCount + s.count - i <= maxCount{ // pronning
                return
            }
            
            
            if i >= s.count{
                maxCount = max(maxCount, cuurCount)
                return
            }
            
            for j in i..<s.count{
//                print(i)
//                print(j)
                var start = s.index(s.startIndex, offsetBy: i)
                var end = s.index(s.startIndex, offsetBy: j )
                
                var subString = String(s[start...end])
                //print(subString)
                if !st.contains(subString){ // Khandani Backtracking tachique
                    st.insert(subString) // Do
                    solve(s, j + 1, &st, cuurCount + 1, &maxCount) // Explore
                    st.remove(subString) // Remove
                }
            }
        }
        
        var uniqueSubString = Set<String>()
        
        var maxCount = 0
        var currentCount = 0
        
        var i = 0
        
        solve(s, i, &uniqueSubString, currentCount, &maxCount)
        
        return maxCount
        
    }
}

print(Solution_1593().maxUniqueSplit("ababccc"))
