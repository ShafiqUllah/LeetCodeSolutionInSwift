class Solution_202 {
    func isHappy(_ n: Int) -> Bool {
        var hash : [Int : Int] = [:]
        
        var num = n
        
        if num == 1 {
            return true
        }
        
        while num != 1{
            var sum = 0
            var temp = num
            while temp > 9{
                //print(temp)
                sum += (temp % 10) * (temp % 10)
                temp = temp / 10
            }
            
            sum += temp * temp
            
            //print(sum)
            
            if sum == 1 {
                return true
            }else if let _ = hash[num]{
                return false
            }else{
                hash[num] = sum
                num = sum
            }
            
            
        }
        
        return true
    }
}
