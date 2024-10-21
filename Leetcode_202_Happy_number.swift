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

// Slow fast poiner approach

class Solution_202_new {
    func isHappy(_ n: Int) -> Bool {
        
        var fast = n
        var slow = n
        
    
        repeat{
            slow = helper(slow)
            fast = helper(helper(fast))
        }while fast != slow
        
        
        
        
        func helper(_ n:Int)->Int{
            var ans = 0
            var n = n
            while n != 0 {
                let temp = n % 10
                ans += temp * temp
                n = n/10
                
            }
            
            return ans
        }
        
        return slow == 1
    }
}
