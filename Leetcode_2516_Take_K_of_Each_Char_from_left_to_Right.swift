
class Solution_2516_copy {
    func takeCharacters(_ s: String, _ k: Int) -> Int {
        let n = s.count
        let arr = Array(s)
        
        
        var count_a = 0 // delete count
        var count_b = 0 //delete count
        var count_c = 0 // delete count
        
        for ch in s{
            if ch == "a"{
                count_a += 1
            }else if ch == "b"{
                count_b += 1
            }else{
                count_c += 1
            }
        }
        
        if count_a < k || count_b < k || count_c < k{
            return -1
        }
        
        var i  = 0
        var j = 0
        var nonDeletedWindowSize = 0
        
        while(j < n){
            if arr[j] == "a"{
                count_a -= 1
            }else if arr[j] == "b"{
                count_b -= 1
            }else{
                count_c -= 1
            }
            
            // if the deletion counter of any char becomes less than k, srink the window, bring them back
            
            while(i <= j && (count_a < k || count_b < k || count_c < k)){
                //iTh pointer move to left
                if arr[i] == "a"{
                    count_a += 1
                }else if arr[i] == "b"{
                    count_b += 1
                }else{
                    count_c += 1
                }
                
                i += 1
                    
            }
            
            nonDeletedWindowSize = max(nonDeletedWindowSize, j - i + 1)
            j += 1
            
        }
        
        return n - nonDeletedWindowSize
    
    }
}



class Solution_2516 {
    func takeCharacters(_ s: String, _ k: Int) -> Int {
        var a = [0,0,0]
        var minAns = Int.max
        
        func rec(_ data:[Character], _ a: [Int]) -> Int{
//            print(data)
            guard a.reduce(0, +) < minAns else{
                return minAns
            }
            
            if a[0] >= k , a[1] >= k , a[2] >= k{
                return a[0] + a[1] + a[2]
            }
            
            guard data.count > 0 else{
                return -1
            }
            
            if data.count == 1{
                var ch = data.first!
                
                var special_a = a
                
                if ch == "a"{
                    special_a[0] += 1
                }else if ch == "b"{
                    special_a[1] += 1
                }else{
                    special_a[2] += 1
                }
                
                if special_a[0] >= k , special_a[1] >= k , special_a[2] >= k{
                    return special_a[0] + special_a[1] + special_a[2]
                }else{
                    return -1
                }
                
            }
            
            var left_a = a
            
            var ch = data.first!
            
            if ch == "a"{
                left_a[0] += 1
            }else if ch == "b"{
                left_a[1] += 1
            }else{
                left_a[2] += 1
            }
            // go left
            let left = rec(Array(data[1...data.count - 1]), left_a)
            
            
            var right_a = a
            ch = data.last!
            
            
            if ch == "a"{
                right_a[0] += 1
            }else if ch == "b"{
                right_a[1] += 1
            }else{
                right_a[2] += 1
            }
            
            // go right
            let right = rec(Array(data[0...data.count - 2]), right_a)
            
            minAns = min(left, right)
            return minAns
        }
        
        return rec(Array(s), a)
    }
}

//Solution_2516().takeCharacters("aabaaaacaabc", 2)

class Solution_2516_copy {
    func takeCharacters(_ s: String, _ k: Int) -> Int {
        let n = s.count
        let arr = Array(s)
        
        
        var count_a = 0 // delete count
        var count_b = 0 //delete count
        var count_c = 0 // delete count
        
        for ch in s{
            if ch == "a"{
                count_a += 1
            }else if ch == "b"{
                count_b += 1
            }else{
                count_c += 1
            }
        }
        
        if count_a < k || count_b < k || count_c < k{
            return -1
        }
        
        var i  = 0
        var j = 0
        var nonDeletedWindowSize = 0
        
        while(j < n){
            if arr[j] == "a"{
                count_a -= 1
            }else if arr[j] == "b"{
                count_b -= 1
            }else{
                count_c -= 1
            }
            
            // if the deletion counter of any char becomes less than k, srink the window, bring them back
            
            while(i <= j && (count_a < k || count_b < k || count_c < k)){
                //iTh pointer move to left
                if arr[i] == "a"{
                    count_a += 1
                }else if arr[i] == "b"{
                    count_b += 1
                }else{
                    count_c += 1
                }
                
                i += 1
                    
            }
            
            nonDeletedWindowSize = max(nonDeletedWindowSize, j - i + 1)
            j += 1
            
        }
        
        return n - nonDeletedWindowSize
    
    }
}

