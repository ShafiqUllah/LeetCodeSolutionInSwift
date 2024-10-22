class Solution_257 {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var ans : [String] = []
        
        guard let root = root else {
            return []
        }

        
        let path = "\(root.val)"
        if root.left == nil && root.right == nil{
            ans.append(path)
            return ans
            
        }
        
        if root.left != nil {
            findPath(root.left, path)
        }
        
        if root.right != nil{
            findPath(root.right, path)
        }
            
        func findPath(_ root:TreeNode?, _ result: String){
            var result = result
            
            guard let root = root else {
                
                return
            }
            result += "->\(root.val)"
            
            if root.left == nil && root.right == nil{
                ans.append(result)
                return
            }
            
            if root.left != nil {
                findPath(root.left, result)
            }
            
            if root.right != nil{
                findPath(root.right, result)
            }

        }
        
        return ans
    }
    
    
}

