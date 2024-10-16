class Solution_1405 {
    func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
       
        
        var result = ""
        
        var maxHeap = [(Int, Character)]()
        
        if a > 0 {
            maxHeap.append((a, "a"))
        }
        
        if b > 0 {
            maxHeap.append((b, "b"))
        }
        
        if c > 0 {
            maxHeap.append((c, "c"))
        }
        
        maxHeap.sort(by: {
            $0.0 > $1.0
        })
        
//        print(maxHeap)
        
        while !maxHeap.isEmpty {
            //print(maxHeap)

            
            let (count1, char1) = maxHeap.removeFirst()
            
            // last two elements are same
            if result.count >= 2 && result.last! == char1 &&
                result[result.index(before: result.index(before: result.endIndex))] == char1 {
                //print("if char - > \(char1)")
                //print("whole String \(result) - 2nd from last \(result[result.index(before: result.index(before: result.endIndex))])")
                if maxHeap.isEmpty{
                    return result
                }
                
                // get second most frequent char
                let (count2, char2) = maxHeap.removeFirst()
                
                // Add the second most frequent char in result
                result.append(char2)
                
                if count2 - 1 > 0{
                    maxHeap.append((count2 - 1, char2))
                }
                
                //reinsert the original most frequent element
                maxHeap.append((count1, char1))
                
            }else{
                //print("else char - > \(char1)")
                result.append(char1)
                
                if count1 - 1 > 0 {
                    maxHeap.append((count1 - 1, char1))
                }
            }
            
            //sort again
            maxHeap.sort(by: {
                $0.0 > $1.0
            })
            
                        
        }
        
        return result
    }
}

print(Solution_1405().longestDiverseString(1, 1, 7))
