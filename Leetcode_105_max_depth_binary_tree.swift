//
//  Leetcode_1_two_sum.swift
//  
//
//  Created by Shafiq  Ullah on 9/18/24.
//

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let left = maxDepth(root.left)
        let right = maxDepth(root.right)
        
        return max(left, right) + 1
    }
    
    //    or
    //    func maxDepth(_ root: TreeNode?) -> Int {
    //        return findMaxDepth(root, 0)
    //    }
    
    func findMaxDepth(_ root: TreeNode?, _ count: Int)->Int{
        guard let _ = root else{
            return count
        }
        
        return max(findMaxDepth(root?.left, count + 1), findMaxDepth(root?.right, count + 1))
    }
}


