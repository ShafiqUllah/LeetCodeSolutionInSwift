
class Solution_28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let needle_length = needle.count
        var starting_index = 0
        
        while starting_index <= haystack.count - needle_length {
            
            let start = haystack.index(haystack.startIndex, offsetBy: starting_index)
            let end = haystack.index(start, offsetBy: needle_length)
            
            let subString = haystack[start..<end]
            if subString == needle{
                return haystack.distance(from: haystack.startIndex, to: start)
            }
            
            starting_index += 1
        }
        
        return -1
    }
}
