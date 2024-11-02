class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        
        if digits == ""{
            return []
        }
        var digits = Array(digits)
        
        
        var reslut  : [String] = []
        
        var mp : [Character: String] = [:]
        
        mp["2"] = "abc"
        mp["3"] = "def"
        mp["4"] = "ghi"
        mp["5"] = "jkl"
        mp["6"] = "mno"
        mp["7"] = "pqrs"
        mp["8"] = "tuv"
        mp["9"] = "wxyz"
        
        var temp = ""
        solve(0, &digits, &temp, mp)
        
        
        func solve(_ idx: Int, _ digits: inout [Character], _ temp: inout String, _ mp : [Character: String]){
            if idx >= digits.count{
                reslut.append(temp)
                return
            }
//            print(idx)
            let ch = digits[idx]
            if let str = mp[ch]{
                let tStr = Array(str)
                
                for i in 0..<tStr.count{
                    //print(tStr[i])
                    temp.append(tStr[i])
                    solve(idx + 1, &digits, &temp, mp)
                    temp.removeLast()
                }
            }
            
        }
        
        return reslut
    }
}
