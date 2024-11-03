class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        
    let morseCodes = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
    "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
    "..-", "...-", ".--", "-..-", "-.--", "--.."]

    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var morseMap: [Character: String] = [:]

    for (index, letter) in alphabet.enumerated() {
        morseMap[letter] = morseCodes[index]
    }

    //var ans = 0
    var s = [String]()

    for w in words{
        //print(w)
        var temp = ""
        for c in w{
            //print(c)
            if let st = morseMap[c]{
                temp += st
            }
            
        }
        //print(temp)
        if !s.contains(temp){
            s.append(temp)
        }
    }

    return s.count
    }
}

// From Chatgpt
class Solution_gpt {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let morseCodes = [
            ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
            "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
            "..-", "...-", ".--", "-..-", "-.--", "--.."
        ]
        
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        var morseMap: [Character: String] = [:]
        
        // Create a mapping from each lowercase letter to its Morse code
        for (index, letter) in alphabet.enumerated() {
            morseMap[letter] = morseCodes[index]
        }
        
        var uniqueTransformations = Set<String>()
        
        for word in words {
            var morseTransformation = ""
            for char in word {
                morseTransformation += morseMap[char] ?? ""
            }
            uniqueTransformations.insert(morseTransformation)
        }
        
        return uniqueTransformations.count
    }
}

