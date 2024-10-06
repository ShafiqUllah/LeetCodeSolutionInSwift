class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {

        var ransomeStack = [Character]()
    
        for c in ransomNote.sorted(){
            ransomeStack.append(c)
        }
        
        for c in magazine.sorted(){
            if ransomeStack.first != nil, c == ransomeStack.first{
                ransomeStack.removeFirst()
            }
            
            if ransomeStack.isEmpty{
                return true
            }
        }
        
        return false
    }
}


// Chatgpt solution

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var magazineCount = [Character: Int]()
    
    // Count the frequency of each character in magazine
    for char in magazine {
        magazineCount[char, default: 0] += 1
    }
    
    // For each character in ransomNote, check if it's available in magazineCount
    for char in ransomNote {
        if let count = magazineCount[char], count > 0 {
            magazineCount[char]! -= 1
        } else {
            return false  // Not enough characters in magazine
        }
    }
    
    return true  // Successfully constructed ransomNote
}
