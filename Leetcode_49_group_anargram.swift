class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var hash : [String: [String]] = [:]
        
        for (_, str) in strs.enumerated(){
            let sorted_hash_key = String(str.sorted())
            if isValidAnargram(sorted_hash_key, str){
                // this is the short form
                //hash[sorted_hash_key, default: []].append(str)
                if var existingArray = hash[sorted_hash_key]{
                    existingArray.append(str)
                    hash[sorted_hash_key] = existingArray
                }else{
                    hash[sorted_hash_key] = [str]
                }
            }
        }
        
        
        
        func isValidAnargram(_ s:String, _ t:String)->Bool{
            guard s.count == t.count else{
                return false
            }
            
            return s.sorted() == t.sorted()
        }
        
        return Array(hash.values)
        
    }
}
