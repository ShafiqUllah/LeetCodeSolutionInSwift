class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var subStrs = s.split(separator: " ")
        return subStrs.removeLast().count
    }
}
