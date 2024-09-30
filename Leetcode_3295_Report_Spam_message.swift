class Solution_3295 {
    func reportSpam(_ message: [String], _ bannedWords: [String]) -> Bool {
        // create a set for banned words
        var set_ban_words  = Set<String>()
        for ban in bannedWords{
            set_ban_words.insert(ban)
        }
        
       // print(set_ban_words.count)
        
        // check the spam message
        var count = 0
        for message in message {
            if set_ban_words.contains(message){
                count += 1
                
                if count > 1 {
                    return true
                }
            }
        }
        
        return false
        
    }
}


print(Solution_3295().reportSpam(["hello","programming","fun","programming"], ["world","programming","leetcode","programming"]))
