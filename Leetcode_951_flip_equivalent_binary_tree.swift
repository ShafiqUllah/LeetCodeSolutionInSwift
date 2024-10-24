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
    func flipEquiv(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        
        // both nil
        if root1 == nil  && root2 == nil{
            return true
        }
        
        // one of them nil, or val doesn't match
        if root1 == nil || root2 == nil || root1?.val != root2?.val{
            return false
        }
        
        //without flip
        //send both direction
        var noFlip = flipEquiv(root1?.left, root2?.left) && flipEquiv(root1?.right, root2?.right)

        //with flip
        //send both direction
        var flip = flipEquiv(root1?.left, root2?.right) && flipEquiv(root1?.right, root2?.left)
        
        // return if any of the value is true
        return flip || noFlip
    
    }
}
