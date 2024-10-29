class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = a
        var b = b
        var ans = ""
        var carry = false

        // Main loop to process bits from both `a` and `b`
        while !a.isEmpty || !b.isEmpty || carry {
            let aLast = !a.isEmpty ? a.removeLast() : "0"
            let bLast = !b.isEmpty ? b.removeLast() : "0"

            // Calculate the sum of aLast, bLast, and carry
            let sum = (aLast == "1" ? 1 : 0) + (bLast == "1" ? 1 : 0) + (carry ? 1 : 0)
            
            // Update carry and ans based on the sum
            carry = sum > 1
            ans = "\(sum % 2)" + ans  // Prepend the calculated bit to ans
        }

        return ans
    }
}
