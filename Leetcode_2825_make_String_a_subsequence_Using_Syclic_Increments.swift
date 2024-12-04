class Solution_2825 {
    func canMakeSubsequence(_ str1: String, _ str2: String) -> Bool {
       
        
        var pointer_1 = 0
        var pointer_2 = 0
        var st1 = Array(str1)
        var st2 = Array(str2)
        
        //var char1Val = st1[pointer_1].asciiValue ?? 0 //97
        
        while pointer_1 < st1.count && pointer_2 < st2.count{
            let char1Val = st1[pointer_1]
            let char2Val = st2[pointer_2]


            if char1Val == char2Val{
                pointer_1 += 1
                pointer_2 += 1
            }else if char1Val == "z"  && char2Val == "a"{
                pointer_1 += 1
                pointer_2 += 1
            }
            else if char1Val.asciiValue! + 1 == char2Val.asciiValue! {
                pointer_1 += 1
                pointer_2 += 1
            }
            else{
                pointer_1 += 1
            }

        }
        
        return pointer_2 == str2.count
        
    }
}
