class Solution_101 {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else{
            return true
        }
        
        
        
        func inMirror(_ left: TreeNode?, _ right: TreeNode?)->Bool{
            if left == nil , right == nil{
                return true
            }
            
            if left == nil || right == nil{
                return false
            }
            
            return (left?.val == right?.val) &&
            inMirror(left?.left, right?.right) &&
            inMirror(left?.right, right?.left)
        }
        
        return inMirror(root.left, root.right)
        
        
    }
}
