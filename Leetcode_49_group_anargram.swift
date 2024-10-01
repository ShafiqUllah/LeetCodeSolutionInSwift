class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
//        var stack = [String]()
//
//        for str in strs {
//            stack.append(str)
//        }
        var hash : [String: [String]] = [:]
        //var ha : [String : String] = [:]
        
        for (_, str) in strs.enumerated(){
            let sorted_hash_key = String(str.sorted())
            if isValidAnargram(sorted_hash_key, str){
                //print("found")
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
