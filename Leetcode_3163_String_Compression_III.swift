class Solution {
    func compressedString(_ word: String) -> String {
        
        
        var stack = [Character]()
        var ans = ""
        
        for c in word{
            if c != stack.last ?? " " , !stack.isEmpty{
                ans += String(stack.count)
                ans += String(stack.removeLast())
                stack.removeAll()
                stack.append(c)
            }else{
                if stack.count == 9{
                    ans += String(stack.count)
                    ans += String(stack.removeLast())
                    stack.removeAll()
                    stack.append(c)
                }else{
                    stack.append(c)
                }
            }
        }
        
        if !stack.isEmpty{
            ans += String(stack.count)
            ans += String(stack.removeLast())
            stack.removeAll()
        }
        
        //print(ans)
        return ans
    }
}

// chatgpt ans
class Solution_gpt {
    func compressedString(_ word: String) -> String {
        var result = ""
        let chars = Array(word)
        var i = 0
        let n = chars.count

        while i < n {
            var count = 0
            let char = chars[i]

            // Count up to 9 occurrences of the same character
            while i < n && chars[i] == char && count < 9 {
                i += 1
                count += 1
            }

            result += "\(count)\(char)"
        }

        return result
    }
}

