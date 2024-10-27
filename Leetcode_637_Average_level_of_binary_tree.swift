/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var hashSum : [Int: Int] = [:]
        var hashCount: [Int : Int] = [:]
        
        var ans : [Double] = []
        
        guard let root = root else{
            return []
        }
        
        var queue : [TreeNode] = [root]
        
        while !queue.isEmpty{
            
            var levelSum = 0
            var levelCount = queue.count
            
            for _ in 0..<levelCount{
                let node = queue.removeFirst()
                levelSum += node.val
                
                if let left = node.left{
                    queue.append(left)
                }
                
                if let right = node.right{
                    queue.append(right)
                }
            }

            ans.append(Double(levelSum)/Double(levelCount))
            
        }
        
        return ans
        
    }
}
