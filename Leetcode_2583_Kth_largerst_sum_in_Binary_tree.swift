class Solution_2583{
    func kthLargestLevelSum(_ root: TreeNode?, _ k: Int) -> Int {
        
        var hash : [Int:Int] = [:]
        
        guard let root = root else {
            return 0
        }
        
        
        DFS(root, 1)
        
        
        func DFS(_ root: TreeNode?, _ level:Int) {
            
            guard let root = root else {
                return
            }
            
            if let val = hash[level]{
                hash[level] = val + root.val
            }else{
                hash[level] = root.val
            }
            
            DFS(root.left, level + 1)
            DFS(root.right, level + 1)
        }
        
        let a = hash.values.sorted(by: >)
        
        if k <= a.count {
            return a[k - 1]
        } else {
            // Handle the case when k is out of bounds
            return -1 // or any default value
        }
        
    }
}
